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
var desktopGridSize* {.importc: "workspace.desktopGridSize", nodecl}: QSize
var desktopGridWidth* {.importc: "workspace.desktopGridWidth", nodecl}: int
var desktopGridHeight* {.importc: "workspace.desktopGridHeight", nodecl}: int
var workspaceWidth* {.importc: "workspace.workspaceWidth", nodecl}: int
var workspaceHeight* {.importc: "workspace.workspaceHeight", nodecl}: int
var workspaceSize* {.importc: "workspace.workspaceSize", nodecl}: QSize
var desktops* {.importc: "workspace.desktops", nodecl}: int
var displaySize* {.importc: "workspace.displaySize", nodecl}: QSize
var displayWidth* {.importc: "workspace.displayWidth", nodecl}: int
var displayHeight* {.importc: "workspace.displayHeight", nodecl}: int
var activeScreen* {.importc: "workspace.activeScreen", nodecl}: int
var numScreens* {.importc: "workspace.numScreens", nodecl}: int
var currentActivity* {.importc: "workspace.currentActivity", nodecl}: string
var activities* {.importc: "workspace.activities", nodecl}: seq[string]
proc desktopPresenceChanged*(callback: proc(client: TClient, desktop: int)) {.importc: "workspace.desktopPresenceChanged.connect"}
proc currentDesktopChanged*(callback: proc(desktop: int, client: TClient)) {.importc: "workspace.currentDesktopChanged.connect"}
proc clientAdded*(callback: proc(client: TClient)) {.importc: "workspace.clientAdded.connect"}
proc clientRemoved*(callback: proc(client: TClient)) {.importc: "workspace.clientRemoved.connect"}
proc clientManaging*(callback: proc(client: TClient)) {.importc: "workspace.clientManaging.connect"}
proc clientMinimized*(callback: proc(client: TClient)) {.importc: "workspace.clientMinimized.connect"}
proc clientUnminimized*(callback: proc(client: TClient)) {.importc: "workspace.clientUnminimized.connect"}
proc clientRestored*(callback: proc(client: TClient)) {.importc: "workspace.clientRestored.connect"}
proc clientMaximizeSet*(callback: proc(client: TClient, h: bool, v: bool)) {.importc: "workspace.clientMaximizeSet.connect"}
proc killWindowCalled*(callback: proc(client: TClient)) {.importc: "workspace.killWindowCalled.connect"}
proc clientActivated*(callback: proc(client: TClient)) {.importc: "workspace.clientActivated.connect"}
proc clientFullScreenSet*(callback: proc(client: TClient, fullScreen: bool, user: bool)) {.importc: "workspace.clientFullScreenSet.connect"}
proc clientSetKeepAbove*(callback: proc(client: TClient, keepAbove: bool)) {.importc: "workspace.clientSetKeepAbove.connect"}
proc numberDesktopsChanged*(callback: proc(oldNumberOfDesktops: int)) {.importc: "workspace.numberDesktopsChanged.connect"}
proc clientDemandsAttentionChanged*(callback: proc(client: TClient, set: bool)) {.importc: "workspace.clientDemandsAttentionChanged.connect"}
proc numberScreensChanged*(callback: proc(count: int)) {.importc: "workspace.numberScreensChanged.connect"}
proc screenResized*(callback: proc(screen: int)) {.importc: "workspace.screenResized.connect"}
proc currentActivityChanged*(callback: proc(id: string)) {.importc: "workspace.currentActivityChanged.connect"}
proc activitiesChanged*(callback: proc(id: string)) {.importc: "workspace.activitiesChanged.connect"}
proc activityAdded*(callback: proc(id: string)) {.importc: "workspace.activityAdded.connect"}
proc activityRemoved*(callback: proc(id: string)) {.importc: "workspace.activityRemoved.connect"}
proc WorkspaceWrapper*(parent: QObject):  {.importc: "workspace.WorkspaceWrapper"}
proc desktopGridSize*(): QSize {.importc: "workspace.desktopGridSize"}
proc desktopGridWidth*(): int {.importc: "workspace.desktopGridWidth"}
proc desktopGridHeight*(): int {.importc: "workspace.desktopGridHeight"}
proc workspaceWidth*(): int {.importc: "workspace.workspaceWidth"}
proc workspaceHeight*(): int {.importc: "workspace.workspaceHeight"}
proc workspaceSize*(): QSize {.importc: "workspace.workspaceSize"}
proc displayWidth*(): int {.importc: "workspace.displayWidth"}
proc displayHeight*(): int {.importc: "workspace.displayHeight"}
proc displaySize*(): QSize {.importc: "workspace.displaySize"}
proc activeScreen*(): int {.importc: "workspace.activeScreen"}
proc numScreens*(): int {.importc: "workspace.numScreens"}
proc currentActivity*(): string {.importc: "workspace.currentActivity"}
proc activityList*(): seq[string] {.importc: "workspace.activityList"}
proc clientList*(): seq[TClient] {.importc: "workspace.clientList"}
proc clientArea*(option: TClientAreaOption, screen: int, desktop: int) {.importc: "workspace.clientArea"}
proc clientArea*(option: TClientAreaOption, point: QPoint, desktop: int) {.importc: "workspace.clientArea"}
proc clientArea*(option: TClientAreaOption, client: TClient) {.importc: "workspace.clientArea"}
proc desktopName*(desktop: int) {.importc: "workspace.desktopName"}
proc supportInformation*() {.importc: "workspace.supportInformation"}
proc getClient*(windowId: TWinId) {.importc: "workspace.getClient"}
proc slotSwitchDesktopNext*() {.importc: "workspace.slotSwitchDesktopNext"}
proc slotSwitchDesktopPrevious*() {.importc: "workspace.slotSwitchDesktopPrevious"}
proc slotSwitchDesktopRight*() {.importc: "workspace.slotSwitchDesktopRight"}
proc slotSwitchDesktopLeft*() {.importc: "workspace.slotSwitchDesktopLeft"}
proc slotSwitchDesktopUp*() {.importc: "workspace.slotSwitchDesktopUp"}
proc slotSwitchDesktopDown*() {.importc: "workspace.slotSwitchDesktopDown"}
proc slotSwitchToNextScreen*() {.importc: "workspace.slotSwitchToNextScreen"}
proc slotWindowToNextScreen*() {.importc: "workspace.slotWindowToNextScreen"}
proc slotToggleShowDesktop*() {.importc: "workspace.slotToggleShowDesktop"}
proc slotWindowMaximize*() {.importc: "workspace.slotWindowMaximize"}
proc slotWindowMaximizeVertical*() {.importc: "workspace.slotWindowMaximizeVertical"}
proc slotWindowMaximizeHorizontal*() {.importc: "workspace.slotWindowMaximizeHorizontal"}
proc slotWindowMinimize*() {.importc: "workspace.slotWindowMinimize"}
proc slotWindowShade*() {.importc: "workspace.slotWindowShade"}
proc slotWindowRaise*() {.importc: "workspace.slotWindowRaise"}
proc slotWindowLower*() {.importc: "workspace.slotWindowLower"}
proc slotWindowRaiseOrLower*() {.importc: "workspace.slotWindowRaiseOrLower"}
proc slotActivateAttentionWindow*() {.importc: "workspace.slotActivateAttentionWindow"}
proc slotWindowPackLeft*() {.importc: "workspace.slotWindowPackLeft"}
proc slotWindowPackRight*() {.importc: "workspace.slotWindowPackRight"}
proc slotWindowPackUp*() {.importc: "workspace.slotWindowPackUp"}
proc slotWindowPackDown*() {.importc: "workspace.slotWindowPackDown"}
proc slotWindowGrowHorizontal*() {.importc: "workspace.slotWindowGrowHorizontal"}
proc slotWindowGrowVertical*() {.importc: "workspace.slotWindowGrowVertical"}
proc slotWindowShrinkHorizontal*() {.importc: "workspace.slotWindowShrinkHorizontal"}
proc slotWindowShrinkVertical*() {.importc: "workspace.slotWindowShrinkVertical"}
proc slotWindowQuickTileLeft*() {.importc: "workspace.slotWindowQuickTileLeft"}
proc slotWindowQuickTileRight*() {.importc: "workspace.slotWindowQuickTileRight"}
proc slotWindowQuickTileTopLeft*() {.importc: "workspace.slotWindowQuickTileTopLeft"}
proc slotWindowQuickTileTopRight*() {.importc: "workspace.slotWindowQuickTileTopRight"}
proc slotWindowQuickTileBottomLeft*() {.importc: "workspace.slotWindowQuickTileBottomLeft"}
proc slotWindowQuickTileBottomRight*() {.importc: "workspace.slotWindowQuickTileBottomRight"}
proc slotSwitchWindowUp*() {.importc: "workspace.slotSwitchWindowUp"}
proc slotSwitchWindowDown*() {.importc: "workspace.slotSwitchWindowDown"}
proc slotSwitchWindowRight*() {.importc: "workspace.slotSwitchWindowRight"}
proc slotSwitchWindowLeft*() {.importc: "workspace.slotSwitchWindowLeft"}
proc slotIncreaseWindowOpacity*() {.importc: "workspace.slotIncreaseWindowOpacity"}
proc slotLowerWindowOpacity*() {.importc: "workspace.slotLowerWindowOpacity"}
proc slotWindowOperations*() {.importc: "workspace.slotWindowOperations"}
proc slotWindowClose*() {.importc: "workspace.slotWindowClose"}
proc slotWindowMove*() {.importc: "workspace.slotWindowMove"}
proc slotWindowResize*() {.importc: "workspace.slotWindowResize"}
proc slotWindowAbove*() {.importc: "workspace.slotWindowAbove"}
proc slotWindowBelow*() {.importc: "workspace.slotWindowBelow"}
proc slotWindowOnAllDesktops*() {.importc: "workspace.slotWindowOnAllDesktops"}
proc slotWindowFullScreen*() {.importc: "workspace.slotWindowFullScreen"}
proc slotWindowNoBorder*() {.importc: "workspace.slotWindowNoBorder"}
proc slotWindowToNextDesktop*() {.importc: "workspace.slotWindowToNextDesktop"}
proc slotWindowToPreviousDesktop*() {.importc: "workspace.slotWindowToPreviousDesktop"}
proc slotWindowToDesktopRight*() {.importc: "workspace.slotWindowToDesktopRight"}
proc slotWindowToDesktopLeft*() {.importc: "workspace.slotWindowToDesktopLeft"}
proc slotWindowToDesktopUp*() {.importc: "workspace.slotWindowToDesktopUp"}
proc slotWindowToDesktopDown*() {.importc: "workspace.slotWindowToDesktopDown"}
proc showOutline*(geometry: QRect) {.importc: "workspace.showOutline"}
proc showOutline*(x: int, y: int, width: int, height: int) {.importc: "workspace.showOutline"}
proc hideOutline*() {.importc: "workspace.hideOutline"}