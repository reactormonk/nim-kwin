import q_point
import q_size
type QRect* = ref object
proc QRect*(topleft: QPoint, bottomright: QPoint): QRect {.importcpp: "QRect"}
proc QRect*(topleft: QPoint, size: QSize): QRect {.importcpp: "QRect"}
proc QRect*(left: int, top: int, width: int, height: int): QRect {.importcpp: "QRect"}
proc isNull*(rect: QRect): bool {.importcpp: "isNull"}
proc isEmpty*(rect: QRect): bool {.importcpp: "isEmpty"}
proc isValid*(rect: QRect): bool {.importcpp: "isValid"}
proc normalize*(rect: QRect): QRect {.importcpp: "normalize"}
proc left*(rect: QRect): int {.importcpp: "left"}
proc top*(rect: QRect): int {.importcpp: "top"}
proc right*(rect: QRect): int {.importcpp: "right"}
proc bottom*(rect: QRect): int {.importcpp: "bottom"}
proc rLeft*(rect: QRect): QCOORD {.importcpp: "rLeft"}
proc rTop*(rect: QRect): QCOORD {.importcpp: "rTop"}
proc rRight*(rect: QRect): QCOORD {.importcpp: "rRight"}
proc rBottom*(rect: QRect): QCOORD {.importcpp: "rBottom"}
proc x*(rect: QRect): int {.importcpp: "x"}
proc y*(rect: QRect): int {.importcpp: "y"}
proc setLeft*(rect: QRect, pos: int) {.importcpp: "setLeft"}
proc setTop*(rect: QRect, pos: int) {.importcpp: "setTop"}
proc setRight*(rect: QRect, pos: int) {.importcpp: "setRight"}
proc setBottom*(rect: QRect, pos: int) {.importcpp: "setBottom"}
proc setX*(rect: QRect, x: int) {.importcpp: "setX"}
proc setY*(rect: QRect, y: int) {.importcpp: "setY"}
proc setTopLeft*(rect: QRect, p: QPoint) {.importcpp: "setTopLeft"}
proc setBottomRight*(rect: QRect, p: QPoint) {.importcpp: "setBottomRight"}
proc setTopRight*(rect: QRect, p: QPoint) {.importcpp: "setTopRight"}
proc setBottomLeft*(rect: QRect, p: QPoint) {.importcpp: "setBottomLeft"}
proc topLeft*(rect: QRect): QPoint {.importcpp: "topLeft"}
proc bottomRight*(rect: QRect): QPoint {.importcpp: "bottomRight"}
proc topRight*(rect: QRect): QPoint {.importcpp: "topRight"}
proc bottomLeft*(rect: QRect): QPoint {.importcpp: "bottomLeft"}
proc center*(rect: QRect): QPoint {.importcpp: "center"}
proc rect*(rect: QRect, x: int, y: int, w: int, h: int) {.importcpp: "rect"}
proc coords*(rect: QRect, x1: int, y1: int, x2: int, y2: int) {.importcpp: "coords"}
proc moveLeft*(rect: QRect, pos: int) {.importcpp: "moveLeft"}
proc moveTop*(rect: QRect, pos: int) {.importcpp: "moveTop"}
proc moveRight*(rect: QRect, pos: int) {.importcpp: "moveRight"}
proc moveBottom*(rect: QRect, pos: int) {.importcpp: "moveBottom"}
proc moveTopLeft*(rect: QRect, p: QPoint) {.importcpp: "moveTopLeft"}
proc moveBottomRight*(rect: QRect, p: QPoint) {.importcpp: "moveBottomRight"}
proc moveTopRight*(rect: QRect, p: QPoint) {.importcpp: "moveTopRight"}
proc moveBottomLeft*(rect: QRect, p: QPoint) {.importcpp: "moveBottomLeft"}
proc moveCenter*(rect: QRect, p: QPoint) {.importcpp: "moveCenter"}
proc moveBy*(rect: QRect, dx: int, dy: int) {.importcpp: "moveBy"}
proc setRect*(rect: QRect, x: int, y: int, w: int, h: int) {.importcpp: "setRect"}
proc setCoords*(rect: QRect, x1: int, y1: int, x2: int, y2: int) {.importcpp: "setCoords"}
proc addCoords*(rect: QRect, x1: int, y1: int, x2: int, y2: int) {.importcpp: "addCoords"}
proc size*(rect: QRect): QSize {.importcpp: "size"}
proc width*(rect: QRect): int {.importcpp: "width"}
proc height*(rect: QRect): int {.importcpp: "height"}
proc setWidth*(rect: QRect, w: int) {.importcpp: "setWidth"}
proc setHeight*(rect: QRect, h: int) {.importcpp: "setHeight"}
proc setSize*(rect: QRect, s: QSize) {.importcpp: "setSize"}
proc contains*(rect: QRect, p: QPoint, proper: bool): bool {.importcpp: "contains"}
proc contains*(rect: QRect, x: int, y: int): bool {.importcpp: "contains"}
proc contains*(rect: QRect, x: int, y: int, proper: bool): bool {.importcpp: "contains"}
proc contains*(rect: QRect, r: QRect, proper: bool): bool {.importcpp: "contains"}
proc unite*(rect: QRect, r: QRect): QRect {.importcpp: "unite"}
proc intersect*(rect: QRect, r: QRect): QRect {.importcpp: "intersect"}
proc intersects*(rect: QRect, r: QRect): bool {.importcpp: "intersects"}
