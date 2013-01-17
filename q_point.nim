type QPoint* = ref object
proc QPoint*(xpos: int, ypos: int): QPoint {.importcpp: "QPoint"}
proc isNull*(point: QPoint): bool {.importcpp: "isNull"}
proc x*(point: QPoint): int {.importcpp: "x"}
proc y*(point: QPoint): int {.importcpp: "y"}
proc setX*(point: QPoint, x: int) {.importcpp: "setX"}
proc setY*(point: QPoint, y: int) {.importcpp: "setY"}
proc manhattanLength*(point: QPoint): int {.importcpp: "manhattanLength"}
