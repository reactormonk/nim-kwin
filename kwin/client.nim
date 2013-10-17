import kwin/helper, kwin/toplevel

type TClient* = ref object of TToplevel
  active* {.importc: "active".}: bool 
  caption* {.importc: "caption".}: cstring 
  closeable* {.importc: "closeable".}: bool 
  fullScreen* {.importc: "fullScreen".}: bool 
  fullScreenable* {.importc: "fullScreenable".}: bool 
  keepAbove* {.importc: "keepAbove".}: bool 
  keepBelow* {.importc: "keepBelow".}: bool 
  maximizable* {.importc: "maximizable".}: bool 
  minimizable* {.importc: "minimizable".}: bool 
  minimized* {.importc: "minimized".}: bool 
  modal* {.importc: "modal".}: bool 
  moveable* {.importc: "moveable".}: bool 
  moveableAcrossScreens* {.importc: "moveableAcrossScreens".}: bool 
  providesContextHelp* {.importc: "providesContextHelp".}: bool 
  resizeable* {.importc: "resizeable".}: bool 
  shadeable* {.importc: "shadeable".}: bool 
  shade* {.importc: "shade".}: bool 
  transient* {.importc: "transient".}: bool 
  transientFor* {.importc: "transientFor".}: TClient 
  basicUnit* {.importc: "basicUnit".}: TSize 
  move* {.importc: "move".}: bool 
  resize* {.importc: "resize".}: bool 
  iconGeometry* {.importc: "iconGeometry".}: TRect 
  specialWindow* {.importc: "specialWindow".}: bool 
  wantsInput* {.importc: "wantsInput".}: bool 
  icon* {.importc: "icon".}: QPixmap 
  skipSwitcher* {.importc: "skipSwitcher".}: bool 
  skipTaskbar* {.importc: "skipTaskbar".}: bool 
  skipPager* {.importc: "skipPager".}: bool 
  tabGroup* {.importc: "tabGroup".}: TTabGroup 
  isCurrentTab* {.importc: "isCurrentTab".}: bool 
  minSize* {.importc: "minSize".}: TSize 
  maxSize* {.importc: "maxSize".}: TSize 
  noBorder* {.importc: "noBorder".}: bool 
  demandsAttention* {.importc: "demandsAttention".}: bool 
  blocksCompositing* {.importc: "blocksCompositing".}: bool 
  decorationHasAlpha* {.importc: "decorationHasAlpha".}: bool 
type TSizemode* = distinct int
var
  SizemodeAny* {.importc: "SizemodeAny", nodecl.}: TSizemode
  SizemodeFixedW* {.importc: "SizemodeFixedW", nodecl.}: TSizemode
  SizemodeFixedH* {.importc: "SizemodeFixedH", nodecl.}: TSizemode
  SizemodeMax* {.importc: "SizemodeMax", nodecl.}: TSizemode
type TCoordinateMode* = distinct int
var
  DecorationRelative* {.importc: "DecorationRelative", nodecl.}: TCoordinateMode
  WindowRelative* {.importc: "WindowRelative", nodecl.}: TCoordinateMode
proc clientManaging*(client: TClient, callback: proc(client: TClient)) {.importcpp: "clientManaging.connect".}
proc clientFullScreenSet*(client: TClient, callback: proc(client: TClient, fullscreen: bool, user: bool)) {.importcpp: "clientFullScreenSet.connect".}
proc clientMaximizedStateChanged*(client: TClient, callback: proc(client: TClient, h: bool, v: bool)) {.importcpp: "clientMaximizedStateChanged.connect".}
proc clientMinimized*(client: TClient, callback: proc(client: TClient, animate: bool)) {.importcpp: "clientMinimized.connect".}
proc clientUnminimized*(client: TClient, callback: proc(client: TClient, animate: bool)) {.importcpp: "clientUnminimized.connect".}
proc clientStartUserMovedResized*(client: TClient, callback: proc(client: TClient)) {.importcpp: "clientStartUserMovedResized.connect".}
proc clientStepUserMovedResized*(client: TClient, callback: proc(client: TClient, rect: TRect)) {.importcpp: "clientStepUserMovedResized.connect".}
proc clientFinishUserMovedResized*(client: TClient, callback: proc(client: TClient)) {.importcpp: "clientFinishUserMovedResized.connect".}
proc activeChanged*(client: TClient, callback: proc()) {.importcpp: "activeChanged.connect".}
proc captionChanged*(client: TClient, callback: proc()) {.importcpp: "captionChanged.connect".}
proc desktopChanged*(client: TClient, callback: proc()) {.importcpp: "desktopChanged.connect".}
proc fullScreenChanged*(client: TClient, callback: proc()) {.importcpp: "fullScreenChanged.connect".}
proc transientChanged*(client: TClient, callback: proc()) {.importcpp: "transientChanged.connect".}
proc modalChanged*(client: TClient, callback: proc()) {.importcpp: "modalChanged.connect".}
proc shadeChanged*(client: TClient, callback: proc()) {.importcpp: "shadeChanged.connect".}
proc keepAboveChanged*(client: TClient, callback: proc()) {.importcpp: "keepAboveChanged.connect".}
proc keepBelowChanged*(client: TClient, callback: proc()) {.importcpp: "keepBelowChanged.connect".}
proc minimizedChanged*(client: TClient, callback: proc()) {.importcpp: "minimizedChanged.connect".}
proc moveResizedChanged*(client: TClient, callback: proc()) {.importcpp: "moveResizedChanged.connect".}
proc iconChanged*(client: TClient, callback: proc()) {.importcpp: "iconChanged.connect".}
proc skipSwitcherChanged*(client: TClient, callback: proc()) {.importcpp: "skipSwitcherChanged.connect".}
proc skipTaskbarChanged*(client: TClient, callback: proc()) {.importcpp: "skipTaskbarChanged.connect".}
proc skipPagerChanged*(client: TClient, callback: proc()) {.importcpp: "skipPagerChanged.connect".}
proc tabGroupChanged*(client: TClient, callback: proc()) {.importcpp: "tabGroupChanged.connect".}
proc showRequest*(client: TClient, callback: proc()) {.importcpp: "showRequest.connect".}
proc menuHidden*(client: TClient, callback: proc()) {.importcpp: "menuHidden.connect".}
proc appMenuAvailable*(client: TClient, callback: proc()) {.importcpp: "appMenuAvailable.connect".}
proc appMenuUnavailable*(client: TClient, callback: proc()) {.importcpp: "appMenuUnavailable.connect".}
proc demandsAttentionChanged*(client: TClient, callback: proc()) {.importcpp: "demandsAttentionChanged.connect".}
proc blockingCompositingChanged*(client: TClient, callback: proc(client: TClient)) {.importcpp: "blockingCompositingChanged.connect".}
proc transientFor*(client: TClient): TClient {.importcpp: "transientFor".}
proc isTransient*(client: TClient): bool {.importcpp: "isTransient".}
proc groupTransient*(client: TClient): bool {.importcpp: "groupTransient".}
proc wasOriginallyGroupTransient*(client: TClient): bool {.importcpp: "wasOriginallyGroupTransient".}
proc mainClients*(client: TClient): seq[TClient] {.importcpp: "mainClients".}
proc allMainClients*(client: TClient): seq[TClient] {.importcpp: "allMainClients".}
proc hasTransient*(client: TClient, c: TClient, indirect: bool): bool {.importcpp: "hasTransient".}
proc transients*(client: TClient): seq[TClient] {.importcpp: "transients".}
proc isSpecialWindow*(client: TClient): bool {.importcpp: "isSpecialWindow".}
proc hasNETSupport*(client: TClient): bool {.importcpp: "hasNETSupport".}
proc minSize*(client: TClient): TSize {.importcpp: "minSize".}
proc maxSize*(client: TClient): TSize {.importcpp: "maxSize".}
proc basicUnit*(client: TClient): TSize {.importcpp: "basicUnit".}
proc clientPos*(client: TClient): TPoint {.importcpp: "clientPos".}
proc clientSize*(client: TClient): TSize {.importcpp: "clientSize".}
proc inputPos*(client: TClient): TPoint {.importcpp: "inputPos".}
proc releaseWindow*(client: TClient, on_shutdown: bool) {.importcpp: "releaseWindow".}
proc destroyClient*(client: TClient) {.importcpp: "destroyClient".}
proc icon*(client: TClient): QPixmap {.importcpp: "icon".}
proc icon*(client: TClient, size: TSize): QPixmap {.importcpp: "icon".}
proc miniIcon*(client: TClient): QPixmap {.importcpp: "miniIcon".}
proc bigIcon*(client: TClient): QPixmap {.importcpp: "bigIcon".}
proc hugeIcon*(client: TClient): QPixmap {.importcpp: "hugeIcon".}
proc activities*(client: TClient): seq[cstring] {.importcpp: "activities".}
proc updateActivities*(client: TClient, includeTransients: bool) {.importcpp: "updateActivities".}
proc iconGeometry*(client: TClient): TRect {.importcpp: "iconGeometry".}
proc setFullScreen*(client: TClient, set: bool, user: bool) {.importcpp: "setFullScreen".}
proc isFullScreen*(client: TClient): bool {.importcpp: "isFullScreen".}
proc isFullScreenable*(client: TClient, fullscreen_hack: bool): bool {.importcpp: "isFullScreenable".}
proc isActiveFullScreen*(client: TClient): bool {.importcpp: "isActiveFullScreen".}
proc userCanSetFullScreen*(client: TClient): bool {.importcpp: "userCanSetFullScreen".}
proc geometryFSRestore*(client: TClient): TRect {.importcpp: "geometryFSRestore".}
proc fullScreenMode*(client: TClient): int {.importcpp: "fullScreenMode".}
proc noBorder*(client: TClient): bool {.importcpp: "noBorder".}
proc setNoBorder*(client: TClient, set: bool) {.importcpp: "setNoBorder".}
proc userCanSetNoBorder*(client: TClient): bool {.importcpp: "userCanSetNoBorder".}
proc checkNoBorder*(client: TClient) {.importcpp: "checkNoBorder".}
proc skipTaskbar*(client: TClient, from_outside: bool): bool {.importcpp: "skipTaskbar".}
proc setSkipTaskbar*(client: TClient, set: bool, from_outside: bool) {.importcpp: "setSkipTaskbar".}
proc skipPager*(client: TClient): bool {.importcpp: "skipPager".}
proc skipSwitcher*(client: TClient): bool {.importcpp: "skipSwitcher".}
proc sessionStackingOrder*(client: TClient): int {.importcpp: "sessionStackingOrder".}
proc setModal*(client: TClient, modal: bool) {.importcpp: "setModal".}
proc isModal*(client: TClient): bool {.importcpp: "isModal".}
proc wantsTabFocus*(client: TClient): bool {.importcpp: "wantsTabFocus".}
proc wantsInput*(client: TClient): bool {.importcpp: "wantsInput".}
proc isResizable*(client: TClient): bool {.importcpp: "isResizable".}
proc isMovable*(client: TClient): bool {.importcpp: "isMovable".}
proc isMovableAcrossScreens*(client: TClient): bool {.importcpp: "isMovableAcrossScreens".}
proc isCloseable*(client: TClient): bool {.importcpp: "isCloseable".}
proc isDemandingAttention*(client: TClient): bool {.importcpp: "isDemandingAttention".}
proc demandAttention*(client: TClient, set: bool) {.importcpp: "demandAttention".}
proc updateDecoration*(client: TClient, check_workspace_pos: bool, force: bool) {.importcpp: "updateDecoration".}
proc checkBorderSizes*(client: TClient, also_resize: bool): bool {.importcpp: "checkBorderSizes".}
proc triggerDecorationRepaint*(client: TClient) {.importcpp: "triggerDecorationRepaint".}
proc updateShape*(client: TClient) {.importcpp: "updateShape".}
proc electricBorderMaximizeGeometry*(client: TClient, pos: TPoint, desktop: int): TRect {.importcpp: "electricBorderMaximizeGeometry".}
proc providesContextHelp*(client: TClient): bool {.importcpp: "providesContextHelp".}
proc tabGroup*(client: TClient): TTabGroup {.importcpp: "tabGroup".}
proc tabBefore*(client: TClient, other: TClient, activate: bool) {.importcpp: "tabBefore".}
proc tabBehind*(client: TClient, other: TClient, activate: bool) {.importcpp: "tabBehind".}
proc syncTabGroupFor*(client: TClient, property: cstring, fromThisClient: bool) {.importcpp: "syncTabGroupFor".}
proc untab*(client: TClient, toGeometry: TRect, clientRemoved: bool) {.importcpp: "untab".}
proc setTabGroup*(client: TClient, group: TTabGroup) {.importcpp: "setTabGroup".}
proc setClientShown*(client: TClient, shown: bool) {.importcpp: "setClientShown".}
proc dontMoveResize*(client: TClient) {.importcpp: "dontMoveResize".}
proc isCurrentTab*(client: TClient): bool {.importcpp: "isCurrentTab".}
proc hasOffscreenXineramaStrut*(client: TClient): bool {.importcpp: "hasOffscreenXineramaStrut".}
proc decorationRect*(client: TClient): TRect {.importcpp: "decorationRect".}
proc transparentRect*(client: TClient): TRect {.importcpp: "transparentRect".}
proc decorationHasAlpha*(client: TClient): bool {.importcpp: "decorationHasAlpha".}
proc closeWindow*(client: TClient) {.importcpp: "closeWindow".}
