require 'nokogiri'

class PoC
  def initialize(member, prefix)
    @member = member
    @prefix = prefix
  end

  attr_reader :member, :prefix

  def name
    member.xpath('./name').text rescue nil
  end
  def to_s
    code
  end
  def to_str
    code
  end

  def paramlist
    member.xpath('./param').map {|ele| [typeconv(ele.xpath('./type').text), ele.xpath('./declname').text].reverse.join(": ")}
  end

  def typeconv(typestr)
    type = typestr[/^(?:const )?([^ ]*)/, 1]
    TypeConv[type] || type
  end

  def importname
    if prefix
      "#{prefix}.#{name}"
    else
      name
    end
  end

  def prefix_call?
    # use importcpp?
    !prefix and @target
  end

  def pragmas
    []
  end

  def import_statement
    if prefix_call?
      %({.importcpp: "#{importname}"#{pragmas.empty? ? "" : ", " + pragmas.join(", ")}.})
    else
      %({.importc: "#{importname}"#{pragmas.empty? ? "" : ", " + pragmas.join(", ")}.})
    end
  end
end

class Enum < PoC
  def code
    "type T%s* = distinct int\nvar\n  " % [name] +
     member.xpath('./enumvalue/name').map(&:text).map do |vname|
      path = @prefix ? @prefix + "." + vname : vname
      %{%s* {.importc: "%s", nodecl.}: T%s} % [vname, path, name]
    end.join("\n  ")
  end
end
class Var < PoC
  def pragmas
    ["nodecl"]
  end
  def code
    type = typeconv(member.xpath('./type').text)
    %{var %s* %s: %s} % [name, import_statement, type]
  end
end
class Field < PoC
  def code
    type = typeconv(member.xpath('./type').text)
    "%s*: %s" % [name, type]
  end
end
class Sign < PoC
  def initialize(member, prefix, target)
    super(member, prefix)
    @target = target
  end
  def importname
    super + ".connect"
  end
  def code
    if @target
      %[proc %s*(%s, callback: proc(%s)) %s] % [name, @target, paramlist.join(", "), import_statement]
    else
      %[proc %s*(callback: proc(%s)) %s] % [name, paramlist.join(", "), import_statement]
    end
  end
end
class Func < PoC
  def initialize(member, prefix, target)
    super(member, prefix)
    @target = target
  end

  def paramlist
    if super.empty?
      member.xpath('./argsstring').text.delete('()').split(', ').map do |e|
        type, name = e.split(' ')[0..1]
        "#{name}: #{typeconv(type)}" if ! type and ! name
      end.compact
    else
      super
    end
  end

  def code
    returntype = typeconv(member.xpath('./type').text)
    if returntype == :void
      %[proc %s*(%s) %s] % [name, ([@target] + paramlist).compact.join(", "), import_statement]
    else
      %[proc %s*(%s): %s %s] % [name, ([@target] + paramlist).compact.join(", "), returntype, import_statement]
    end
  end
end

class Type < PoC
  def initialize(fields, type)
    @fields = fields
    @type = type
  end

  def code
    typedef = "type %s = ref object" % [@type]
    ([typedef] + @fields.map {|f| "  " + f}).join("\n")
  end
end

TypeConv = {
            # TODO: QVariant, QRect, QList<KWin::Client*>, QPoint, WindowOperation, KWin::Deleted, QRegion, KWin::TabGroup, QPixmap
            "MouseCommand" => "TMouseCommand",
            "FocusPolicy" => "TFocusPolicy",
            "ClientAreaOption" => "TClientAreaOption",
            "KWin::Client" => "TClient",
            "KWin::Options" => "TOptions",
            "KWin::Workspace" => "TWorkspace",
            "qulonglong" => "TWinId",
            "QByteArray" => "string",
            "QString" => "string",
            "QStringList" => "seq[string]",
            "QScriptValue" => "proc()",
            "Q_SCRIPTABLE" => :void,
            "()" => :void,
            "void" => :void,
            "Q_INVOKABLE" => :void,
            "uint" => "int",
            "KWin::Toplevel" => "TToplevel",
            "KWin::Deleted" => "TDeleted",
            "QPoint" => "TPoint",
            "QSize" => "TSize",
            "QRect" => "TRect",
            "qreal" => "float",
            "long" => "int",
           }

def generate(doc, target, prefix)
  Nokogiri::XML(File.read(doc)).xpath('//sectiondef[@kind="public-slot" or @kind="public-func" or @kind="signal" or @kind="property" or @kind="public-type"]//memberdef').map do |member|
    case member['kind']
    when "enum"
      Enum.new(member, prefix)
    when "property"
      if prefix
        Var.new(member, prefix)
      else
        Field.new(member, prefix)
      end
    when "signal"
      Sign.new(member, prefix, target)
    when /function|slot/
      Func.new(member, prefix, target)
    when "variable"
    else
      $stderr.puts "implement " + member['kind']
    end
  end
end

def compile(path, target, prefix, type)
  puts "# #{type}"
  pocs = generate(path, target ? "#{target}: #{type}" : nil , prefix)
  enums, fields, var, signals, func = pocs.group_by(&:class).tap {|h| h.default = [] }.values_at(Enum, Field, Var, Sign, Func)
  "#{Type.new(fields, type)}\n" + (enums + var + signals + func).join("\n")
end

if file = ARGV.shift
  name = ARGV.shift
  puts compile(file, name, nil, "Q" + name.capitalize)
else
  puts compile("docs/xml/class_k_win_1_1_workspace_wrapper.xml", nil, "workspace", "TWorkspace")
  puts compile("docs/xml/class_k_win_1_1_options.xml", nil, "options", "TOptions")
  puts compile("docs/xml/class_k_win_1_1_toplevel.xml", "toplevel", nil, "TToplevel")
  puts compile("docs/xml/class_k_win_1_1_client.xml", "client", nil, "TClient")
  puts compile("kwin/scripting/documentation-global.xml", nil, nil, "TGlobal")
end
