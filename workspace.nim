import helper
import client

type TClientAreaOption* = distinct int
var
  PlacementArea* {.importc: "KWin.PlacementArea", nodecl.}: TClientAreaOption
  MovementArea* {.importc: "KWin.MovementArea", nodecl.}: TClientAreaOption
  MaximizeArea* {.importc: "KWin.MaximizeArea", nodecl.}: TClientAreaOption
  MaximizeFullArea* {.importc: "KWin.MaximizeFullArea", nodecl.}: TClientAreaOption
  FullScreenArea* {.importc: "KWin.FullScreenArea", nodecl.}: TClientAreaOption
  WorkArea* {.importc: "KWin.WorkArea", nodecl.}: TClientAreaOption
  FullArea* {.importc: "KWin.FullArea", nodecl.}: TClientAreaOption
  ScreenArea* {.importc: "KWin.ScreenArea", nodecl.}: TClientAreaOption
type TElectricBorder* = distinct int
var
  ElectricTop* {.importc: "KWin.ElectricTop", nodecl.}: TElectricBorder
  ElectricTopRight* {.importc: "KWin.ElectricTopRight", nodecl.}: TElectricBorder
  ElectricRight* {.importc: "KWin.ElectricRight", nodecl.}: TElectricBorder
  ElectricBottomRight* {.importc: "KWin.ElectricBottomRight", nodecl.}: TElectricBorder
  ElectricBottom* {.importc: "KWin.ElectricBottom", nodecl.}: TElectricBorder
  ElectricBottomLeft* {.importc: "KWin.ElectricBottomLeft", nodecl.}: TElectricBorder
  ElectricLeft* {.importc: "KWin.ElectricLeft", nodecl.}: TElectricBorder
  ElectricTopLeft* {.importc: "KWin.ElectricTopLeft", nodecl.}: TElectricBorder
  ELECTRIC_COUNT* {.importc: "KWin.ELECTRIC_COUNT", nodecl.}: TElectricBorder
  ElectricNone* {.importc: "KWin.ElectricNone", nodecl.}: TElectricBorder
var currentDesktop* {.importc: "workspace.currentDesktop", nodecl}: int
var activeClient* {.importc: "workspace.activeClient", nodecl}: TClient
var desktopGridSize* {.importc: "workspace.desktopGridSize", nodecl}: TSize
var desktopGridWidth* {.importc: "workspace.desktopGridWidth", nodecl}: int
var desktopGridHeight* {.importc: "workspace.desktopGridHeight", nodecl}: int
var workspaceWidth* {.importc: "workspace.workspaceWidth", nodecl}: int
var workspaceHeight* {.importc: "workspace.workspaceHeight", nodecl}: int
var workspaceSize* {.importc: "workspace.workspaceSize", nodecl}: TSize
var desktops* {.importc: "workspace.desktops", nodecl}: int
var displaySize* {.importc: "workspace.displaySize", nodecl}: TSize
var displayWidth* {.importc: "workspace.displayWidth", nodecl}: int
var displayHeight* {.importc: "workspace.displayHeight", nodecl}: int
var activeScreen* {.importc: "workspace.activeScreen", nodecl}: int
var numScreens* {.importc: "workspace.numScreens", nodecl}: int
var currentActivity* {.importc: "workspace.currentActivity", nodecl}: string
var activities* {.importc: "workspace.activities", nodecl}: seq[string]
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
