type TWinId* = int
type TRect* = ref object
  x* {.importc: "x".}: int
  y* {.importc: "y".}: int 
  width* {.importc: "width".}: int
  height* {.importc: "height".}: int
type TPoint* = ref object
  x* {.importc: "x".}: int
  y* {.importc: "y".}: int
type TSize* = ref object
  w* {.importc: "w".}: int
  h* {.importc: "h".}: int

type TDeleted* = ref object # TODO

type TTabGroup* = ref object # TODO

type QPixmap* = ref object # TODO

type QVariant* = ref object
# Will break at some point. Use repr or $ in that case.
converter toQVariant(obj: expr): QVariant = result = cast[QVariant](obj)

type TWindowOperation* = ref object # TODO

proc makeRect*(x, y, width, height: int): TRect =
  new(result)
  result.x = x
  result.y = y
  result.width = width
  result.height = height

proc makePoint*(x, y: int): TPoint =
  new(result)
  result.x = x
  result.y = y

proc makeSize*(w, h: int): TSize =
  new(result)
  result.w = w
  result.h = h

type
  TTimer* = object
    interval* {.importc: "interval".}: int

proc connect*(timer: TTimer, callback: proc()) {.importcpp: "timeout.connect".}
proc start*(timer: TTimer) {.importcpp: "start".}
proc stop*(timer: TTimer) {.importcpp: "stop".}
proc makeTimer*(): TTimer {.importc: "new QTimer".}
