import kwinhelper

type TToplevel* = ref object {.inheritable.}
  alpha* {.importc: "alpha".}: bool 
  frameId* {.importc: "frameId".}: TWinId 
  geometry* {.importc: "geometry".}: TRect 
  visibleRect* {.importc: "visibleRect".}: TRect 
  height* {.importc: "height".}: int 
  opacity* {.importc: "opacity".}: float 
  pos* {.importc: "pos".}: TPoint 
  screen* {.importc: "screen".}: int 
  size* {.importc: "size".}: TSize 
  width* {.importc: "width".}: int 
  windowId* {.importc: "windowId".}: TWinId 
  x* {.importc: "x*:".}: int 
  y* {.importc: "y*:".}: int 
  desktop* {.importc: "desktop".}: int 
  onAllDesktops* {.importc: "onAllDesktops".}: bool 
  rect* {.importc: "rect".}: TRect 
  clientPos* {.importc: "clientPos".}: TPoint 
  clientSize* {.importc: "clientSize".}: TSize 
  resourceName* {.importc: "resourceName".}: string 
  resourceClass* {.importc: "resourceClass".}: string 
  windowRole* {.importc: "windowRole".}: string 
  desktopWindow* {.importc: "desktopWindow".}: bool 
  dock* {.importc: "dock".}: bool 
  toolbar* {.importc: "toolbar".}: bool 
  menu* {.importc: "menu".}: bool 
  normalWindow* {.importc: "normalWindow".}: bool 
  dialog* {.importc: "dialog".}: bool 
  splash* {.importc: "splash".}: bool 
  utility* {.importc: "utility".}: bool 
  dropdownMenu* {.importc: "dropdownMenu".}: bool 
  popupMenu* {.importc: "popupMenu".}: bool 
  tooltip* {.importc: "tooltip".}: bool 
  notification* {.importc: "notification".}: bool 
  comboBox* {.importc: "comboBox".}: bool 
  dndIcon* {.importc: "dndIcon".}: bool 
  windowType* {.importc: "windowType".}: int 
  activities* {.importc: "activities".}: seq[cstring]
  managed* {.importc: "managed".}: bool 
  deleted* {.importc: "deleted".}: bool 
  shaped* {.importc: "shaped".}: bool 
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
proc geometry*(toplevel: TToplevel): TRect {.importcpp: "geometry".}
proc size*(toplevel: TToplevel): TSize {.importcpp: "size".}
proc pos*(toplevel: TToplevel): TPoint {.importcpp: "pos".}
proc rect*(toplevel: TToplevel): TRect {.importcpp: "rect".}
proc width*(toplevel: TToplevel): int {.importcpp: "width".}
proc height*(toplevel: TToplevel): int {.importcpp: "height".}
proc isOnScreen*(toplevel: TToplevel, screen: int): bool {.importcpp: "isOnScreen".}
proc screen*(toplevel: TToplevel): int {.importcpp: "screen".}
proc clientPos*(toplevel: TToplevel): TPoint {.importcpp: "clientPos".}
proc clientSize*(toplevel: TToplevel): TSize {.importcpp: "clientSize".}
proc visibleRect*(toplevel: TToplevel): TRect {.importcpp: "visibleRect".}
proc decorationRect*(toplevel: TToplevel): TRect {.importcpp: "decorationRect".}
proc transparentRect*(toplevel: TToplevel): TRect {.importcpp: "transparentRect".}
proc isClient*(toplevel: TToplevel): bool {.importcpp: "isClient".}
proc isDeleted*(toplevel: TToplevel): bool {.importcpp: "isDeleted".}
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
proc readyForPainting*(toplevel: TToplevel): bool {.importcpp: "readyForPainting".}
proc shape*(toplevel: TToplevel): bool {.importcpp: "shape".}
proc depth*(toplevel: TToplevel): int {.importcpp: "depth".}
proc hasAlpha*(toplevel: TToplevel): bool {.importcpp: "hasAlpha".}
proc setupCompositing*(toplevel: TToplevel): bool {.importcpp: "setupCompositing".}
proc finishCompositing*(toplevel: TToplevel) {.importcpp: "finishCompositing".}
proc updateUnredirectedState*(toplevel: TToplevel): bool {.importcpp: "updateUnredirectedState".}
proc unredirected*(toplevel: TToplevel): bool {.importcpp: "unredirected".}
proc suspendUnredirect*(toplevel: TToplevel, suspend: bool) {.importcpp: "suspendUnredirect".}
proc addRepaint*(toplevel: TToplevel, r: TRect) {.importcpp: "addRepaint".}
proc addRepaint*(toplevel: TToplevel, x: int, y: int, w: int, h: int) {.importcpp: "addRepaint".}
proc addLayerRepaint*(toplevel: TToplevel, r: TRect) {.importcpp: "addLayerRepaint".}
proc addLayerRepaint*(toplevel: TToplevel, x: int, y: int, w: int, h: int) {.importcpp: "addLayerRepaint".}
proc addRepaintFull*(toplevel: TToplevel) {.importcpp: "addRepaintFull".}
proc addWorkspaceRepaint*(toplevel: TToplevel, r: TRect) {.importcpp: "addWorkspaceRepaint".}
proc addWorkspaceRepaint*(toplevel: TToplevel, x: int, y: int, w: int, h: int) {.importcpp: "addWorkspaceRepaint".}
proc resetRepaints*(toplevel: TToplevel) {.importcpp: "resetRepaints".}
proc resetDamage*(toplevel: TToplevel, r: TRect) {.importcpp: "resetDamage".}
proc resetAndFetchDamage*(toplevel: TToplevel): bool {.importcpp: "resetAndFetchDamage".}
proc getDamageRegionReply*(toplevel: TToplevel) {.importcpp: "getDamageRegionReply".}
