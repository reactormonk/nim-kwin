import kwin/helper
import kwin/workspace

proc print*(objects: varargs[expr, cstring]) {.importc: "print"}
proc readConfig*(key: cstring, defaultValue: QVariant) {.importc: "readConfig"}
proc registerScreenEdge*(border: TElectricBorder, callback: proc()) {.importc: "registerScreenEdge"}
proc registerShortcut*(title, text, keySequence: cstring, callback: proc()) {.importc: "registerShortcut"}
proc assert*(value: bool, message: cstring = "") {.importc: "assert"}
proc assertTrue*(value: bool, message: cstring = "") {.importc: "assertTrue"}
proc assertFalse*(value: bool, message: cstring = "") {.importc: "assertFalse"}
proc assertEquals*(expected, actual: QVariant, message: cstring = "") {.importc: "assertEquals"}
proc assertNull*(value: QVariant, message: cstring = "") {.importc: "assertNull"}
proc assertNotNull*(value: QVariant, message: cstring = "") {.importc: "assertNotNull"}
proc callDBus*(service, path, theInterface, theMethod: cstring, args: openarray[QVariant], callback: proc()) {.importc: "callDBus"}
proc registerUserActionsMenu*(callback: proc()) {.importc: "registerUserActionsMenu"}
