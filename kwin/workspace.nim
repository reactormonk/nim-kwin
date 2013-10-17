import kwinhelper
import kwinclient

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
var currentActivity* {.importc: "workspace.currentActivity", nodecl}: cstring
var activities* {.importc: "workspace.activities", nodecl}: seq[cstring]
proc isMinimized*(client: TClient): bool {.importcpp: "isMinimized".}
proc isMaximizable*(client: TClient): bool {.importcpp: "isMaximizable".}
proc geometryRestore*(client: TClient): TRect {.importcpp: "geometryRestore".}
proc isMinimizable*(client: TClient): bool {.importcpp: "isMinimizable".}
proc setMaximize*(client: TClient, vertically: bool, horizontally: bool) {.importcpp: "setMaximize".}
proc iconGeometry*(client: TClient): TRect {.importcpp: "iconGeometry".}
proc fullScreenMode*(client: TClient): int {.importcpp: "fullScreenMode".}
proc userCanSetNoBorder*(client: TClient): bool {.importcpp: "userCanSetNoBorder".}
proc wantsInput*(client: TClient): bool {.importcpp: "wantsInput".}
proc isResizable*(client: TClient): bool {.importcpp: "isResizable".}
proc isMovable*(client: TClient): bool {.importcpp: "isMovable".}
proc isMovableAcrossScreens*(client: TClient): bool {.importcpp: "isMovableAcrossScreens".}
proc isCloseable*(client: TClient): bool {.importcpp: "isCloseable".}
proc providesContextHelp*(client: TClient): bool {.importcpp: "providesContextHelp".}
proc tabGroup*(client: TClient): TTabGroup {.importcpp: "tabGroup".}
proc tabBefore*(client: TClient, other: TClient, activate: bool) {.importcpp: "tabBefore".}
proc tabBehind*(client: TClient, other: TClient, activate: bool) {.importcpp: "tabBehind".}
proc syncTabGroupFor*(client: TClient, property: cstring, fromThisClient: bool) {.importcpp: "syncTabGroupFor".}
proc untab*(client: TClient, toGeometry: TRect, clientRemoved: bool) {.importcpp: "untab".}
proc setTabGroup*(client: TClient, group: TTabGroup) {.importcpp: "setTabGroup".}
proc setClientShown*(client: TClient, shown: bool) {.importcpp: "setClientShown".}
proc isCurrentTab*(client: TClient): bool {.importcpp: "isCurrentTab".}
proc decorationRect*(client: TClient): TRect {.importcpp: "decorationRect".}
proc transparentRect*(client: TClient): TRect {.importcpp: "transparentRect".}
proc decorationHasAlpha*(client: TClient): bool {.importcpp: "decorationHasAlpha".}
proc closeWindow*(client: TClient) {.importcpp: "closeWindow".}
proc clientArea*(option: TClientAreaOption, screen, desktop: int): TRect {.importc: "workspace.clientArea"}
proc clientArea*(option: TClientAreaOption, point: TPoint, desktop: int): TRect {.importc: "workspace.clientArea"}
proc clientArea*(option: TClientAreaOption, client: TClient): TRect {.importc: "workspace.clientArea"}
proc showOutline*(geometry: TRect) {.importc: "workspace.showOutline".}
proc showOutline*(x, y, width, height: int) {.importc: "workspace.showOutline".}
proc hideOutline*() {.importc: "workspace.hideOutline".}
proc clientList*(): seq[TClient] {.importc: "workspace.clientList".}
