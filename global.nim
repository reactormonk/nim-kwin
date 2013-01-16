proc print*(objects: openarray[expr]) {.importc: "print"}
proc readConfig*(key: string, defaultValue: QVariant) {.importc: "readConfig"}
proc registerScreenEdge*(border: ElectricBorder, callback: proc()) {.importc: "registerScreenEdge"}
proc registerShortcut*(title, text, keySequence: string, callback: proc()) {.importc: "registerShortcut"}
proc assert*(value: bool, message: string = "") {.importc: "assert"}
proc assertTrue*(value: bool, message: string = "") {.importc: "assertTrue"}
proc assertFalse*(value: bool, message: string = "") {.importc: "assertFalse"}
proc assertEquals*(expected, actual: QVariant, message: string = "") {.importc: "assertEquals"}
proc assertNull*(value: QVariant, message: string = "") {.importc: "assertNull"}
proc assertNotNull*(value: QVariant, message: string = "") {.importc: "assertNotNull"}
proc callDBus*(service, path, interface, method: string, arg: openarray[QVariant], callback: proc()) {.importc: "callDBus"}
proc registerUserActionsMenu*(callback: proc()) {.importc: "registerUserActionsMenu"}