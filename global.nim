type TGlobal = ref object
  options*: TOptions
  workspace*: TWorkspace
proc print*() {.importc: "print"}
proc readConfig*() {.importc: "readConfig"}
proc registerScreenEdge*() {.importc: "registerScreenEdge"}
proc registerShortcut*() {.importc: "registerShortcut"}
proc assert*() {.importc: "assert"}
proc assertTrue*() {.importc: "assertTrue"}
proc assertFalse*() {.importc: "assertFalse"}
proc assertEquals*() {.importc: "assertEquals"}
proc assertNull*() {.importc: "assertNull"}
proc assertNotNull*() {.importc: "assertNotNull"}
proc callDBus*() {.importc: "callDBus"}
proc registerUserActionsMenu*() {.importc: "registerUserActionsMenu"}