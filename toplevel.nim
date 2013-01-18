import helper

type TToplevel = ref object
  alpha*: bool
  frameId*: TWinId
  geometry*: TRect
  visibleRect*: TRect
  height*: int
  opacity*: float
  pos*: TPoint
  screen*: int
  size*: TSize
  width*: int
  windowId*: TWinId
  x*: int
  y*: int
  desktop*: int
  onAllDesktops*: bool
  rect*: TRect
  clientPos*: TPoint
  clientSize*: TSize
  resourceName*: string
  resourceClass*: string
  windowRole*: string
  desktopWindow*: bool
  dock*: bool
  toolbar*: bool
  menu*: bool
  normalWindow*: bool
  dialog*: bool
  splash*: bool
  utility*: bool
  dropdownMenu*: bool
  popupMenu*: bool
  tooltip*: bool
  notification*: bool
  comboBox*: bool
  dndIcon*: bool
  windowType*: int
  activities*: seq[string]
  managed*: bool
  deleted*: bool
  shaped*: bool
proc opacityChanged*(toplevel: TToplevel, callback: proc(toplevel: TToplevel, oldOpacity: float)) {.importcpp: "opacityChanged.connect".}
proc damaged*(toplevel: TToplevel, callback: proc(toplevel: TToplevel, damage: TRect)) {.importcpp: "damaged.connect".}
proc propertyNotify*(toplevel: TToplevel, callback: proc(toplevel: TToplevel, a: int)) {.importcpp: "propertyNotify.connect".}
proc geometryChanged*(toplevel: TToplevel, callback: proc()) {.importcpp: "geometryChanged.connect".}
proc geometryShapeChanged*(toplevel: TToplevel, callback: proc(toplevel: TToplevel, old: TRect)) {.importcpp: "geometryShapeChanged.connect".}
proc paddingChanged*(toplevel: TToplevel, callback: proc(toplevel: TToplevel, old: TRect)) {.importcpp: "paddingChanged.connect".}
proc windowClosed*(toplevel: TToplevel, callback: proc(toplevel: TToplevel, deleted: TDeleted)) {.importcpp: "windowClosed.connect".}
proc windowShown*(toplevel: TToplevel, callback: proc(toplevel: TToplevel)) {.importcpp: "windowShown.connect".}
proc shapedChanged*(toplevel: TToplevel, callback: proc()) {.importcpp: "shapedChanged.connect".}
proc needsRepaint*(toplevel: TToplevel, callback: proc()) {.importcpp: "needsRepaint.connect".}
proc Toplevel*(toplevel: TToplevel, ws: Workspace):  {.importcpp: "Toplevel".}
proc frameId*(toplevel: TToplevel): Window {.importcpp: "frameId".}
proc window*(toplevel: TToplevel): Window {.importcpp: "window".}
proc workspace*(toplevel: TToplevel): Workspace {.importcpp: "workspace".}
proc geometry*(toplevel: TToplevel): TRect {.importcpp: "geometry".}
proc size*(toplevel: TToplevel): TSize {.importcpp: "size".}
proc pos*(toplevel: TToplevel): TPoint {.importcpp: "pos".}
proc rect*(toplevel: TToplevel): TRect {.importcpp: "rect".}
proc x*(toplevel: TToplevel): int {.importcpp: "x".}
proc y*(toplevel: TToplevel): int {.importcpp: "y".}
proc width*(toplevel: TToplevel): int {.importcpp: "width".}
proc height*(toplevel: TToplevel): int {.importcpp: "height".}
proc isOnScreen*(toplevel: TToplevel, screen: int): bool {.importcpp: "isOnScreen".}
proc screen*(toplevel: TToplevel): int {.importcpp: "screen".}
proc clientPos*(toplevel: TToplevel): TPoint {.importcpp: "clientPos".}
proc clientSize*(toplevel: TToplevel): TSize {.importcpp: "clientSize".}
proc visibleRect*(toplevel: TToplevel): TRect {.importcpp: "visibleRect".}
proc decorationRect*(toplevel: TToplevel): TRect {.importcpp: "decorationRect".}
proc transparentRect*(toplevel: TToplevel): TRect {.importcpp: "transparentRect".}
proc decorationPendingRegion*(toplevel: TToplevel): QRegion {.importcpp: "decorationPendingRegion".}
proc isClient*(toplevel: TToplevel): bool {.importcpp: "isClient".}
proc isDeleted*(toplevel: TToplevel): bool {.importcpp: "isDeleted".}
proc windowType*(toplevel: TToplevel, direct: bool, supported_types: int): NET::WindowType {.importcpp: "windowType".}
proc hasNETSupport*(toplevel: TToplevel): bool {.importcpp: "hasNETSupport".}
proc isDesktop*(toplevel: TToplevel): bool {.importcpp: "isDesktop".}
proc isDock*(toplevel: TToplevel): bool {.importcpp: "isDock".}
proc isToolbar*(toplevel: TToplevel): bool {.importcpp: "isToolbar".}
proc isMenu*(toplevel: TToplevel): bool {.importcpp: "isMenu".}
proc isNormalWindow*(toplevel: TToplevel): bool {.importcpp: "isNormalWindow".}
proc isDialog*(toplevel: TToplevel): bool {.importcpp: "isDialog".}
proc isSplash*(toplevel: TToplevel): bool {.importcpp: "isSplash".}
proc isUtility*(toplevel: TToplevel): bool {.importcpp: "isUtility".}
proc isDropdownMenu*(toplevel: TToplevel): bool {.importcpp: "isDropdownMenu".}
proc isPopupMenu*(toplevel: TToplevel): bool {.importcpp: "isPopupMenu".}
proc isTooltip*(toplevel: TToplevel): bool {.importcpp: "isTooltip".}
proc isNotification*(toplevel: TToplevel): bool {.importcpp: "isNotification".}
proc isComboBox*(toplevel: TToplevel): bool {.importcpp: "isComboBox".}
proc isDNDIcon*(toplevel: TToplevel): bool {.importcpp: "isDNDIcon".}
proc desktop*(toplevel: TToplevel): int {.importcpp: "desktop".}
proc activities*(toplevel: TToplevel): seq[string] {.importcpp: "activities".}
proc isOnDesktop*(toplevel: TToplevel, d: int): bool {.importcpp: "isOnDesktop".}
proc isOnActivity*(toplevel: TToplevel, activity: string): bool {.importcpp: "isOnActivity".}
proc isOnCurrentDesktop*(toplevel: TToplevel): bool {.importcpp: "isOnCurrentDesktop".}
proc isOnCurrentActivity*(toplevel: TToplevel): bool {.importcpp: "isOnCurrentActivity".}
proc isOnAllDesktops*(toplevel: TToplevel): bool {.importcpp: "isOnAllDesktops".}
proc isOnAllActivities*(toplevel: TToplevel): bool {.importcpp: "isOnAllActivities".}
proc windowRole*(toplevel: TToplevel): string {.importcpp: "windowRole".}
proc sessionId*(toplevel: TToplevel): string {.importcpp: "sessionId".}
proc resourceName*(toplevel: TToplevel): string {.importcpp: "resourceName".}
proc resourceClass*(toplevel: TToplevel): string {.importcpp: "resourceClass".}
proc wmCommand*(toplevel: TToplevel): string {.importcpp: "wmCommand".}
proc wmClientMachine*(toplevel: TToplevel, use_localhost: bool): string {.importcpp: "wmClientMachine".}
proc wmClientLeader*(toplevel: TToplevel): Window {.importcpp: "wmClientLeader".}
proc pid*(toplevel: TToplevel): pid_t {.importcpp: "pid".}
proc windowPixmap*(toplevel: TToplevel, allow_create: bool): Pixmap {.importcpp: "windowPixmap".}
proc readyForPainting*(toplevel: TToplevel): bool {.importcpp: "readyForPainting".}
proc visual*(toplevel: TToplevel): Visual {.importcpp: "visual".}
proc shape*(toplevel: TToplevel): bool {.importcpp: "shape".}
proc setOpacity*(toplevel: TToplevel, opacity: double) {.importcpp: "setOpacity".}
proc opacity*(toplevel: TToplevel): double {.importcpp: "opacity".}
proc depth*(toplevel: TToplevel): int {.importcpp: "depth".}
proc hasAlpha*(toplevel: TToplevel): bool {.importcpp: "hasAlpha".}
proc setupCompositing*(toplevel: TToplevel): bool {.importcpp: "setupCompositing".}
proc finishCompositing*(toplevel: TToplevel) {.importcpp: "finishCompositing".}
proc updateUnredirectedState*(toplevel: TToplevel): bool {.importcpp: "updateUnredirectedState".}
proc unredirected*(toplevel: TToplevel): bool {.importcpp: "unredirected".}
proc suspendUnredirect*(toplevel: TToplevel, suspend: bool) {.importcpp: "suspendUnredirect".}
proc addRepaint*(toplevel: TToplevel, r: TRect): Q_INVOKABLE {.importcpp: "addRepaint".}
proc addRepaint*(toplevel: TToplevel, r: QRegion): Q_INVOKABLE {.importcpp: "addRepaint".}
proc addRepaint*(toplevel: TToplevel, x: int, y: int, w: int, h: int): Q_INVOKABLE {.importcpp: "addRepaint".}
proc addLayerRepaint*(toplevel: TToplevel, r: TRect): Q_INVOKABLE {.importcpp: "addLayerRepaint".}
proc addLayerRepaint*(toplevel: TToplevel, r: QRegion): Q_INVOKABLE {.importcpp: "addLayerRepaint".}
proc addLayerRepaint*(toplevel: TToplevel, x: int, y: int, w: int, h: int): Q_INVOKABLE {.importcpp: "addLayerRepaint".}
proc addRepaintFull*(toplevel: TToplevel): Q_INVOKABLE {.importcpp: "addRepaintFull".}
proc addWorkspaceRepaint*(toplevel: TToplevel, r: TRect) {.importcpp: "addWorkspaceRepaint".}
proc addWorkspaceRepaint*(toplevel: TToplevel, x: int, y: int, w: int, h: int) {.importcpp: "addWorkspaceRepaint".}
proc repaints*(toplevel: TToplevel): QRegion {.importcpp: "repaints".}
proc resetRepaints*(toplevel: TToplevel) {.importcpp: "resetRepaints".}
proc damage*(toplevel: TToplevel): QRegion {.importcpp: "damage".}
proc resetDamage*(toplevel: TToplevel, r: TRect) {.importcpp: "resetDamage".}
proc effectWindow*(toplevel: TToplevel): EffectWindowImpl {.importcpp: "effectWindow".}
proc effectWindow*(toplevel: TToplevel): EffectWindowImpl {.importcpp: "effectWindow".}
proc hasShadow*(toplevel: TToplevel): bool {.importcpp: "hasShadow".}
proc shadow*(toplevel: TToplevel): Shadow {.importcpp: "shadow".}
proc shadow*(toplevel: TToplevel): Shadow {.importcpp: "shadow".}
proc getShadow*(toplevel: TToplevel) {.importcpp: "getShadow".}
proc opaqueRegion*(toplevel: TToplevel): QRegion {.importcpp: "opaqueRegion".}
proc layer*(toplevel: TToplevel): Layer {.importcpp: "layer".}
proc resetAndFetchDamage*(toplevel: TToplevel): bool {.importcpp: "resetAndFetchDamage".}
proc getDamageRegionReply*(toplevel: TToplevel) {.importcpp: "getDamageRegionReply".}

