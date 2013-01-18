import helper
import toplevel

type TClient = ref object of TToplevel
  active*: bool
  caption*: string
  closeable*: bool
  desktop*: int
  onAllDesktops*: bool
  fullScreen*: bool
  fullScreenable*: bool
  geometry*: TRect
  keepAbove*: bool
  keepBelow*: bool
  maximizable*: bool
  minimizable*: bool
  minimized*: bool
  modal*: bool
  moveable*: bool
  moveableAcrossScreens*: bool
  providesContextHelp*: bool
  resizeable*: bool
  shadeable*: bool
  shade*: bool
  transient*: bool
  transientFor*: TClient
  basicUnit*: TSize
  move*: bool
  resize*: bool
  iconGeometry*: TRect
  specialWindow*: bool
  wantsInput*: bool
  icon*: QPixmap
  skipSwitcher*: bool
  skipTaskbar*: bool
  skipPager*: bool
  tabGroup*: KWin::TabGroup
  isCurrentTab*: bool
  minSize*: TSize
  maxSize*: TSize
  noBorder*: bool
  demandsAttention*: bool
  blocksCompositing*: bool
  decorationHasAlpha*: bool
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
proc clientManaging*(client: TClient, callback: proc(: TClient)) {.importcpp: "clientManaging.connect".}
proc clientFullScreenSet*(client: TClient, callback: proc(: TClient, : bool, : bool)) {.importcpp: "clientFullScreenSet.connect".}
proc clientMaximizedStateChanged*(client: TClient, callback: proc(: TClient, : KDecorationDefines::MaximizeMode)) {.importcpp: "clientMaximizedStateChanged.connect".}
proc clientMaximizedStateChanged*(client: TClient, callback: proc(c: TClient, h: bool, v: bool)) {.importcpp: "clientMaximizedStateChanged.connect".}
proc clientMinimized*(client: TClient, callback: proc(client: TClient, animate: bool)) {.importcpp: "clientMinimized.connect".}
proc clientUnminimized*(client: TClient, callback: proc(client: TClient, animate: bool)) {.importcpp: "clientUnminimized.connect".}
proc clientStartUserMovedResized*(client: TClient, callback: proc(: TClient)) {.importcpp: "clientStartUserMovedResized.connect".}
proc clientStepUserMovedResized*(client: TClient, callback: proc(: TClient, : QRect)) {.importcpp: "clientStepUserMovedResized.connect".}
proc clientFinishUserMovedResized*(client: TClient, callback: proc(: TClient)) {.importcpp: "clientFinishUserMovedResized.connect".}
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
proc Client*(client: TClient, ws: Workspace):  {.importcpp: "Client".}
proc wrapperId*(client: TClient): Window {.importcpp: "wrapperId".}
proc decorationId*(client: TClient): Window {.importcpp: "decorationId".}
proc inputId*(client: TClient): Window {.importcpp: "inputId".}
proc transientFor*(client: TClient): Client {.importcpp: "transientFor".}
proc transientFor*(client: TClient): Client {.importcpp: "transientFor".}
proc isTransient*(client: TClient): bool {.importcpp: "isTransient".}
proc groupTransient*(client: TClient): bool {.importcpp: "groupTransient".}
proc wasOriginallyGroupTransient*(client: TClient): bool {.importcpp: "wasOriginallyGroupTransient".}
proc mainClients*(client: TClient): ClientList {.importcpp: "mainClients".}
proc allMainClients*(client: TClient): ClientList {.importcpp: "allMainClients".}
proc hasTransient*(client: TClient, c: Client, indirect: bool): bool {.importcpp: "hasTransient".}
proc transients*(client: TClient): ClientList {.importcpp: "transients".}
proc checkTransient*(client: TClient, w: Window) {.importcpp: "checkTransient".}
proc findModal*(client: TClient, allow_itself: bool): Client {.importcpp: "findModal".}
proc group*(client: TClient): Group {.importcpp: "group".}
proc group*(client: TClient): Group {.importcpp: "group".}
proc checkGroup*(client: TClient, gr: Group, force: bool) {.importcpp: "checkGroup".}
proc changeClientLeaderGroup*(client: TClient, gr: Group) {.importcpp: "changeClientLeaderGroup".}
proc rules*(client: TClient): WindowRules {.importcpp: "rules".}
proc removeRule*(client: TClient, r: Rules) {.importcpp: "removeRule".}
proc setupWindowRules*(client: TClient, ignore_temporary: bool) {.importcpp: "setupWindowRules".}
proc applyWindowRules*(client: TClient) {.importcpp: "applyWindowRules".}
proc updateWindowRules*(client: TClient, selection: Rules::Types) {.importcpp: "updateWindowRules".}
proc updateFullscreenMonitors*(client: TClient, topology: NETFullscreenMonitors) {.importcpp: "updateFullscreenMonitors".}
proc isSpecialWindow*(client: TClient): bool {.importcpp: "isSpecialWindow".}
proc hasNETSupport*(client: TClient): bool {.importcpp: "hasNETSupport".}
proc minSize*(client: TClient): QSize {.importcpp: "minSize".}
proc maxSize*(client: TClient): QSize {.importcpp: "maxSize".}
proc basicUnit*(client: TClient): QSize {.importcpp: "basicUnit".}
proc clientPos*(client: TClient): QPoint {.importcpp: "clientPos".}
proc clientSize*(client: TClient): QSize {.importcpp: "clientSize".}
proc inputPos*(client: TClient): QPoint {.importcpp: "inputPos".}
proc windowEvent*(client: TClient, e: XEvent): bool {.importcpp: "windowEvent".}
proc eventFilter*(client: TClient, o: QObject, e: QEvent): bool {.importcpp: "eventFilter".}
proc windowType*(client: TClient, direct: bool, supported_types: int): NET::WindowType {.importcpp: "windowType".}
proc manage*(client: TClient, w: Window, isMapped: bool): bool {.importcpp: "manage".}
proc releaseWindow*(client: TClient, on_shutdown: bool) {.importcpp: "releaseWindow".}
proc destroyClient*(client: TClient) {.importcpp: "destroyClient".}
proc adjustedSize*(client: TClient, : QSize, mode: Sizemode): QSize {.importcpp: "adjustedSize".}
proc adjustedSize*(client: TClient): QSize {.importcpp: "adjustedSize".}
proc icon*(client: TClient): QPixmap {.importcpp: "icon".}
proc icon*(client: TClient, size: QSize): QPixmap {.importcpp: "icon".}
proc miniIcon*(client: TClient): QPixmap {.importcpp: "miniIcon".}
proc bigIcon*(client: TClient): QPixmap {.importcpp: "bigIcon".}
proc hugeIcon*(client: TClient): QPixmap {.importcpp: "hugeIcon".}
proc isActive*(client: TClient): bool {.importcpp: "isActive".}
proc setActive*(client: TClient, : bool) {.importcpp: "setActive".}
proc desktop*(client: TClient): int {.importcpp: "desktop".}
proc setDesktop*(client: TClient, : int) {.importcpp: "setDesktop".}
proc setOnAllDesktops*(client: TClient, set: bool) {.importcpp: "setOnAllDesktops".}
proc activities*(client: TClient): seq[string] {.importcpp: "activities".}
proc setOnActivity*(client: TClient, activity: string, enable: bool) {.importcpp: "setOnActivity".}
proc setOnAllActivities*(client: TClient, set: bool) {.importcpp: "setOnAllActivities".}
proc setOnActivities*(client: TClient, newActivitiesList: seq[string]) {.importcpp: "setOnActivities".}
proc updateActivities*(client: TClient, includeTransients: bool) {.importcpp: "updateActivities".}
proc isShown*(client: TClient, shaded_is_shown: bool): bool {.importcpp: "isShown".}
proc isHiddenInternal*(client: TClient): bool {.importcpp: "isHiddenInternal".}
proc isShade*(client: TClient): bool {.importcpp: "isShade".}
proc shadeMode*(client: TClient): ShadeMode {.importcpp: "shadeMode".}
proc setShade*(client: TClient, set: bool) {.importcpp: "setShade".}
proc setShade*(client: TClient, mode: ShadeMode) {.importcpp: "setShade".}
proc isShadeable*(client: TClient): bool {.importcpp: "isShadeable".}
proc isMinimized*(client: TClient): bool {.importcpp: "isMinimized".}
proc isMaximizable*(client: TClient): bool {.importcpp: "isMaximizable".}
proc geometryRestore*(client: TClient): QRect {.importcpp: "geometryRestore".}
proc maximizeMode*(client: TClient): MaximizeMode {.importcpp: "maximizeMode".}
proc quickTileMode*(client: TClient): QuickTileMode {.importcpp: "quickTileMode".}
proc isMinimizable*(client: TClient): bool {.importcpp: "isMinimizable".}
proc setMaximize*(client: TClient, vertically: bool, horizontally: bool) {.importcpp: "setMaximize".}
proc iconGeometry*(client: TClient): QRect {.importcpp: "iconGeometry".}
proc setFullScreen*(client: TClient, set: bool, user: bool) {.importcpp: "setFullScreen".}
proc isFullScreen*(client: TClient): bool {.importcpp: "isFullScreen".}
proc isFullScreenable*(client: TClient, fullscreen_hack: bool): bool {.importcpp: "isFullScreenable".}
proc isActiveFullScreen*(client: TClient): bool {.importcpp: "isActiveFullScreen".}
proc userCanSetFullScreen*(client: TClient): bool {.importcpp: "userCanSetFullScreen".}
proc geometryFSRestore*(client: TClient): QRect {.importcpp: "geometryFSRestore".}
proc fullScreenMode*(client: TClient): int {.importcpp: "fullScreenMode".}
proc noBorder*(client: TClient): bool {.importcpp: "noBorder".}
proc setNoBorder*(client: TClient, set: bool) {.importcpp: "setNoBorder".}
proc userCanSetNoBorder*(client: TClient): bool {.importcpp: "userCanSetNoBorder".}
proc checkNoBorder*(client: TClient) {.importcpp: "checkNoBorder".}
proc skipTaskbar*(client: TClient, from_outside: bool): bool {.importcpp: "skipTaskbar".}
proc setSkipTaskbar*(client: TClient, set: bool, from_outside: bool) {.importcpp: "setSkipTaskbar".}
proc skipPager*(client: TClient): bool {.importcpp: "skipPager".}
proc setSkipPager*(client: TClient, : bool) {.importcpp: "setSkipPager".}
proc skipSwitcher*(client: TClient): bool {.importcpp: "skipSwitcher".}
proc setSkipSwitcher*(client: TClient, set: bool) {.importcpp: "setSkipSwitcher".}
proc keepAbove*(client: TClient): bool {.importcpp: "keepAbove".}
proc setKeepAbove*(client: TClient, : bool) {.importcpp: "setKeepAbove".}
proc keepBelow*(client: TClient): bool {.importcpp: "keepBelow".}
proc setKeepBelow*(client: TClient, : bool) {.importcpp: "setKeepBelow".}
proc layer*(client: TClient): Layer {.importcpp: "layer".}
proc belongsToLayer*(client: TClient): Layer {.importcpp: "belongsToLayer".}
proc invalidateLayer*(client: TClient) {.importcpp: "invalidateLayer".}
proc sessionStackingOrder*(client: TClient): int {.importcpp: "sessionStackingOrder".}
proc setModal*(client: TClient, modal: bool) {.importcpp: "setModal".}
proc isModal*(client: TClient): bool {.importcpp: "isModal".}
proc wantsTabFocus*(client: TClient): bool {.importcpp: "wantsTabFocus".}
proc wantsInput*(client: TClient): bool {.importcpp: "wantsInput".}
proc isResizable*(client: TClient): bool {.importcpp: "isResizable".}
proc isMovable*(client: TClient): bool {.importcpp: "isMovable".}
proc isMovableAcrossScreens*(client: TClient): bool {.importcpp: "isMovableAcrossScreens".}
proc isCloseable*(client: TClient): bool {.importcpp: "isCloseable".}
proc takeActivity*(client: TClient, flags: int, handled: bool, : allowed_t) {.importcpp: "takeActivity".}
proc takeFocus*(client: TClient, : allowed_t) {.importcpp: "takeFocus".}
proc isDemandingAttention*(client: TClient): bool {.importcpp: "isDemandingAttention".}
proc demandAttention*(client: TClient, set: bool) {.importcpp: "demandAttention".}
proc setMask*(client: TClient, r: QRegion, mode: int) {.importcpp: "setMask".}
proc mask*(client: TClient): QRegion {.importcpp: "mask".}
proc updateDecoration*(client: TClient, check_workspace_pos: bool, force: bool) {.importcpp: "updateDecoration".}
proc checkBorderSizes*(client: TClient, also_resize: bool): bool {.importcpp: "checkBorderSizes".}
proc triggerDecorationRepaint*(client: TClient) {.importcpp: "triggerDecorationRepaint".}
proc updateShape*(client: TClient) {.importcpp: "updateShape".}
proc setGeometry*(client: TClient, x: int, y: int, w: int, h: int, force: ForceGeometry_t) {.importcpp: "setGeometry".}
proc setGeometry*(client: TClient, r: QRect, force: ForceGeometry_t) {.importcpp: "setGeometry".}
proc move*(client: TClient, x: int, y: int, force: ForceGeometry_t) {.importcpp: "move".}
proc move*(client: TClient, p: QPoint, force: ForceGeometry_t) {.importcpp: "move".}
proc plainResize*(client: TClient, w: int, h: int, force: ForceGeometry_t) {.importcpp: "plainResize".}
proc plainResize*(client: TClient, s: QSize, force: ForceGeometry_t) {.importcpp: "plainResize".}
proc resizeWithChecks*(client: TClient, w: int, h: int, force: ForceGeometry_t) {.importcpp: "resizeWithChecks".}
proc resizeWithChecks*(client: TClient, s: QSize, force: ForceGeometry_t) {.importcpp: "resizeWithChecks".}
proc keepInArea*(client: TClient, area: QRect, partial: bool) {.importcpp: "keepInArea".}
proc setElectricBorderMode*(client: TClient, mode: QuickTileMode) {.importcpp: "setElectricBorderMode".}
proc electricBorderMode*(client: TClient): QuickTileMode {.importcpp: "electricBorderMode".}
proc setElectricBorderMaximizing*(client: TClient, maximizing: bool) {.importcpp: "setElectricBorderMaximizing".}
proc isElectricBorderMaximizing*(client: TClient): bool {.importcpp: "isElectricBorderMaximizing".}
proc electricBorderMaximizeGeometry*(client: TClient, pos: QPoint, desktop: int): QRect {.importcpp: "electricBorderMaximizeGeometry".}
proc sizeForClientSize*(client: TClient, : QSize, mode: Sizemode, noframe: bool): QSize {.importcpp: "sizeForClientSize".}
proc setQuickTileMode*(client: TClient, mode: QuickTileMode, keyboard: bool) {.importcpp: "setQuickTileMode".}
proc growHorizontal*(client: TClient) {.importcpp: "growHorizontal".}
proc shrinkHorizontal*(client: TClient) {.importcpp: "shrinkHorizontal".}
proc growVertical*(client: TClient) {.importcpp: "growVertical".}
proc shrinkVertical*(client: TClient) {.importcpp: "shrinkVertical".}
proc providesContextHelp*(client: TClient): bool {.importcpp: "providesContextHelp".}
proc shortcut*(client: TClient): KShortcut {.importcpp: "shortcut".}
proc setShortcut*(client: TClient, cut: string) {.importcpp: "setShortcut".}
proc mouseButtonToWindowOperation*(client: TClient, button: Qt::MouseButtons): WindowOperation {.importcpp: "mouseButtonToWindowOperation".}
proc performMouseCommand*(client: TClient, : Options::MouseCommand, globalPos: QPoint, handled: bool): bool {.importcpp: "performMouseCommand".}
proc adjustedClientArea*(client: TClient, desktop: QRect, area: QRect): QRect {.importcpp: "adjustedClientArea".}
proc colormap*(client: TClient): Colormap {.importcpp: "colormap".}
proc updateVisibility*(client: TClient) {.importcpp: "updateVisibility".}
proc hideClient*(client: TClient, hide: bool) {.importcpp: "hideClient".}
proc hiddenPreview*(client: TClient): bool {.importcpp: "hiddenPreview".}
proc setupCompositing*(client: TClient): bool {.importcpp: "setupCompositing".}
proc finishCompositing*(client: TClient) {.importcpp: "finishCompositing".}
proc setBlockingCompositing*(client: TClient, block: bool) {.importcpp: "setBlockingCompositing".}
proc isBlockingCompositing*(client: TClient): bool {.importcpp: "isBlockingCompositing".}
proc updateCompositeBlocking*(client: TClient, readProperty: bool) {.importcpp: "updateCompositeBlocking".}
proc caption*(client: TClient, full: bool, stripped: bool): string {.importcpp: "caption".}
proc updateCaption*(client: TClient) {.importcpp: "updateCaption".}
proc keyPressEvent*(client: TClient, key_code: int) {.importcpp: "keyPressEvent".}
proc updateMouseGrab*(client: TClient) {.importcpp: "updateMouseGrab".}
proc moveResizeGrabWindow*(client: TClient): Window {.importcpp: "moveResizeGrabWindow".}
proc calculateGravitation*(client: TClient, invert: bool, gravity: int): QPoint {.importcpp: "calculateGravitation".}
proc NETMoveResize*(client: TClient, x_root: int, y_root: int, direction: NET::Direction) {.importcpp: "NETMoveResize".}
proc NETMoveResizeWindow*(client: TClient, flags: int, x: int, y: int, width: int, height: int) {.importcpp: "NETMoveResizeWindow".}
proc restackWindow*(client: TClient, above: Window, detail: int, source: NET::RequestSource, timestamp: Time, send_event: bool) {.importcpp: "restackWindow".}
proc gotPing*(client: TClient, timestamp: Time) {.importcpp: "gotPing".}
proc checkWorkspacePosition*(client: TClient, oldGeometry: QRect, oldDesktop: int) {.importcpp: "checkWorkspacePosition".}
proc updateUserTime*(client: TClient, time: Time) {.importcpp: "updateUserTime".}
proc userTime*(client: TClient): Time {.importcpp: "userTime".}
proc hasUserTimeSupport*(client: TClient): bool {.importcpp: "hasUserTimeSupport".}
proc setMinimized*(client: TClient, set: bool) {.importcpp: "setMinimized".}
proc minimize*(client: TClient, avoid_animation: bool) {.importcpp: "minimize".}
proc unminimize*(client: TClient, avoid_animation: bool) {.importcpp: "unminimize".}
proc killWindow*(client: TClient) {.importcpp: "killWindow".}
proc maximize*(client: TClient, : MaximizeMode) {.importcpp: "maximize".}
proc toggleShade*(client: TClient) {.importcpp: "toggleShade".}
proc showContextHelp*(client: TClient) {.importcpp: "showContextHelp".}
proc cancelShadeHoverTimer*(client: TClient) {.importcpp: "cancelShadeHoverTimer".}
proc cancelAutoRaise*(client: TClient) {.importcpp: "cancelAutoRaise".}
proc checkActiveModal*(client: TClient) {.importcpp: "checkActiveModal".}
proc strutRect*(client: TClient, area: StrutArea): StrutRect {.importcpp: "strutRect".}
proc strutRects*(client: TClient): StrutRects {.importcpp: "strutRects".}
proc hasStrut*(client: TClient): bool {.importcpp: "hasStrut".}
proc tabGroup*(client: TClient): TabGroup {.importcpp: "tabGroup".}
proc tabBefore*(client: TClient, other: Client, activate: bool): Q_INVOKABLE {.importcpp: "tabBefore".}
proc tabBehind*(client: TClient, other: Client, activate: bool): Q_INVOKABLE {.importcpp: "tabBehind".}
proc syncTabGroupFor*(client: TClient, property: string, fromThisClient: bool): Q_INVOKABLE {.importcpp: "syncTabGroupFor".}
proc untab*(client: TClient, toGeometry: QRect, clientRemoved: bool): Q_INVOKABLE {.importcpp: "untab".}
proc setTabGroup*(client: TClient, group: TabGroup) {.importcpp: "setTabGroup".}
proc setClientShown*(client: TClient, shown: bool) {.importcpp: "setClientShown".}
proc dontMoveResize*(client: TClient) {.importcpp: "dontMoveResize".}
proc isCurrentTab*(client: TClient): bool {.importcpp: "isCurrentTab".}
proc hasOffscreenXineramaStrut*(client: TClient): bool {.importcpp: "hasOffscreenXineramaStrut".}
proc isMove*(client: TClient): bool {.importcpp: "isMove".}
proc isResize*(client: TClient): bool {.importcpp: "isResize".}
proc decorationPaintRedirector*(client: TClient): PaintRedirector {.importcpp: "decorationPaintRedirector".}
proc paddingLeft*(client: TClient): int {.importcpp: "paddingLeft".}
proc paddingRight*(client: TClient): int {.importcpp: "paddingRight".}
proc paddingTop*(client: TClient): int {.importcpp: "paddingTop".}
proc paddingBottom*(client: TClient): int {.importcpp: "paddingBottom".}
proc decorationRect*(client: TClient): QRect {.importcpp: "decorationRect".}
proc transparentRect*(client: TClient): QRect {.importcpp: "transparentRect".}
proc decorationPendingRegion*(client: TClient): QRegion {.importcpp: "decorationPendingRegion".}
proc decorationHasAlpha*(client: TClient): bool {.importcpp: "decorationHasAlpha".}
proc layoutDecorationRects*(client: TClient, left: QRect, top: QRect, right: QRect, bottom: QRect, mode: CoordinateMode) {.importcpp: "layoutDecorationRects".}
proc tabBoxClient*(client: TClient): QWeakPointer< {.importcpp: "tabBoxClient".}
proc isFirstInTabBox*(client: TClient): bool {.importcpp: "isFirstInTabBox".}
proc setFirstInTabBox*(client: TClient, enable: bool) {.importcpp: "setFirstInTabBox".}
proc updateFirstInTabBox*(client: TClient) {.importcpp: "updateFirstInTabBox".}
proc setSessionInteract*(client: TClient, needed: bool) {.importcpp: "setSessionInteract".}
proc isClient*(client: TClient): bool {.importcpp: "isClient".}
proc closeWindow*(client: TClient) {.importcpp: "closeWindow".}
