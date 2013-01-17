type QSize* = ref object
type TScaleMode* = enum ScaleFree, ScaleMin, ScaleMax
proc QSize*(w: int, h: int):  {.importcpp: "QSize"}
proc isNull*(size: QSize): bool {.importcpp: "isNull"}
proc isEmpty*(size: QSize): bool {.importcpp: "isEmpty"}
proc isValid*(size: QSize): bool {.importcpp: "isValid"}
proc width*(size: QSize): int {.importcpp: "width"}
proc height*(size: QSize): int {.importcpp: "height"}
proc setWidth*(size: QSize, w: int) {.importcpp: "setWidth"}
proc setHeight*(size: QSize, h: int) {.importcpp: "setHeight"}
proc transpose*(size: QSize) {.importcpp: "transpose"}
proc scale*(size: QSize, w: int, h: int, mode: TScaleMode) {.importcpp: "scale"}
proc scale*(size: QSize, s: QSize, mode: TScaleMode) {.importcpp: "scale"}
proc expandedTo*(size: QSize, : QSize): QSize {.importcpp: "expandedTo"}
proc boundedTo*(size: QSize, : QSize): QSize {.importcpp: "boundedTo"}
