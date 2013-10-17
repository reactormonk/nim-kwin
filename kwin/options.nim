import kwin/helper

type TFocusPolicy* = distinct int
var
  ClickToFocus* {.importc: "options.ClickToFocus", nodecl.}: TFocusPolicy
  FocusFollowsMouse* {.importc: "options.FocusFollowsMouse", nodecl.}: TFocusPolicy
  FocusUnderMouse* {.importc: "options.FocusUnderMouse", nodecl.}: TFocusPolicy
  FocusStrictlyUnderMouse* {.importc: "options.FocusStrictlyUnderMouse", nodecl.}: TFocusPolicy
type TMouseCommand* = distinct int
var
  MouseRaise* {.importc: "options.MouseRaise", nodecl.}: TMouseCommand
  MouseLower* {.importc: "options.MouseLower", nodecl.}: TMouseCommand
  MouseOperationsMenu* {.importc: "options.MouseOperationsMenu", nodecl.}: TMouseCommand
  MouseToggleRaiseAndLower* {.importc: "options.MouseToggleRaiseAndLower", nodecl.}: TMouseCommand
  MouseActivateAndRaise* {.importc: "options.MouseActivateAndRaise", nodecl.}: TMouseCommand
  MouseActivateAndLower* {.importc: "options.MouseActivateAndLower", nodecl.}: TMouseCommand
  MouseActivate* {.importc: "options.MouseActivate", nodecl.}: TMouseCommand
  MouseActivateRaiseAndPassClick* {.importc: "options.MouseActivateRaiseAndPassClick", nodecl.}: TMouseCommand
  MouseActivateAndPassClick* {.importc: "options.MouseActivateAndPassClick", nodecl.}: TMouseCommand
  MouseMove* {.importc: "options.MouseMove", nodecl.}: TMouseCommand
  MouseUnrestrictedMove* {.importc: "options.MouseUnrestrictedMove", nodecl.}: TMouseCommand
  MouseActivateRaiseAndMove* {.importc: "options.MouseActivateRaiseAndMove", nodecl.}: TMouseCommand
  MouseActivateRaiseAndUnrestrictedMove* {.importc: "options.MouseActivateRaiseAndUnrestrictedMove", nodecl.}: TMouseCommand
  MouseResize* {.importc: "options.MouseResize", nodecl.}: TMouseCommand
  MouseUnrestrictedResize* {.importc: "options.MouseUnrestrictedResize", nodecl.}: TMouseCommand
  MouseShade* {.importc: "options.MouseShade", nodecl.}: TMouseCommand
  MouseSetShade* {.importc: "options.MouseSetShade", nodecl.}: TMouseCommand
  MouseUnsetShade* {.importc: "options.MouseUnsetShade", nodecl.}: TMouseCommand
  MouseMaximize* {.importc: "options.MouseMaximize", nodecl.}: TMouseCommand
  MouseRestore* {.importc: "options.MouseRestore", nodecl.}: TMouseCommand
  MouseMinimize* {.importc: "options.MouseMinimize", nodecl.}: TMouseCommand
  MouseNextDesktop* {.importc: "options.MouseNextDesktop", nodecl.}: TMouseCommand
  MousePreviousDesktop* {.importc: "options.MousePreviousDesktop", nodecl.}: TMouseCommand
  MouseAbove* {.importc: "options.MouseAbove", nodecl.}: TMouseCommand
  MouseBelow* {.importc: "options.MouseBelow", nodecl.}: TMouseCommand
  MouseOpacityMore* {.importc: "options.MouseOpacityMore", nodecl.}: TMouseCommand
  MouseOpacityLess* {.importc: "options.MouseOpacityLess", nodecl.}: TMouseCommand
  MouseClose* {.importc: "options.MouseClose", nodecl.}: TMouseCommand
  MousePreviousTab* {.importc: "options.MousePreviousTab", nodecl.}: TMouseCommand
  MouseNextTab* {.importc: "options.MouseNextTab", nodecl.}: TMouseCommand
  MouseDragTab* {.importc: "options.MouseDragTab", nodecl.}: TMouseCommand
  MouseNothing* {.importc: "options.MouseNothing", nodecl.}: TMouseCommand
type TMouseWheelCommand* = distinct int
var
  MouseWheelRaiseLower* {.importc: "options.MouseWheelRaiseLower", nodecl.}: TMouseWheelCommand
  MouseWheelShadeUnshade* {.importc: "options.MouseWheelShadeUnshade", nodecl.}: TMouseWheelCommand
  MouseWheelMaximizeRestore* {.importc: "options.MouseWheelMaximizeRestore", nodecl.}: TMouseWheelCommand
  MouseWheelAboveBelow* {.importc: "options.MouseWheelAboveBelow", nodecl.}: TMouseWheelCommand
  MouseWheelPreviousNextDesktop* {.importc: "options.MouseWheelPreviousNextDesktop", nodecl.}: TMouseWheelCommand
  MouseWheelChangeOpacity* {.importc: "options.MouseWheelChangeOpacity", nodecl.}: TMouseWheelCommand
  MouseWheelChangeCurrentTab* {.importc: "options.MouseWheelChangeCurrentTab", nodecl.}: TMouseWheelCommand
  MouseWheelNothing* {.importc: "options.MouseWheelNothing", nodecl.}: TMouseWheelCommand
type T113* = distinct int
var
  ElectricDisabled* {.importc: "options.ElectricDisabled", nodecl.}: T113
  ElectricMoveOnly* {.importc: "options.ElectricMoveOnly", nodecl.}: T113
  ElectricAlways* {.importc: "options.ElectricAlways", nodecl.}: T113
var focusPolicy* {.importc: "options.focusPolicy", nodecl}: TFocusPolicy
var nextFocusPrefersMouse* {.importc: "options.nextFocusPrefersMouse", nodecl.}: bool
var clickRaise* {.importc: "options.clickRaise", nodecl.}: bool
var autoRaise* {.importc: "options.autoRaise", nodecl.}: bool
var autoRaiseInterval* {.importc: "options.autoRaiseInterval", nodecl.}: int
var delayFocusInterval* {.importc: "options.delayFocusInterval", nodecl.}: int
var shadeHover* {.importc: "options.shadeHover", nodecl.}: bool
var shadeHoverInterval* {.importc: "options.shadeHoverInterval", nodecl.}: int
var separateScreenFocus* {.importc: "options.separateScreenFocus", nodecl.}: bool
var activeMouseScreen* {.importc: "options.activeMouseScreen", nodecl.}: bool
var placement* {.importc: "options.placement", nodecl.}: int
var focusPolicyIsReasonable* {.importc: "options.focusPolicyIsReasonable", nodecl.}: bool
var borderSnapZone* {.importc: "options.borderSnapZone", nodecl.}: int
var windowSnapZone* {.importc: "options.windowSnapZone", nodecl.}: int
var centerSnapZone* {.importc: "options.centerSnapZone", nodecl.}: int
var snapOnlyWhenOverlapping* {.importc: "options.snapOnlyWhenOverlapping", nodecl.}: bool
var showDesktopIsMinimizeAll* {.importc: "options.showDesktopIsMinimizeAll", nodecl.}: bool
var rollOverDesktops* {.importc: "options.rollOverDesktops", nodecl.}: bool
var focusStealingPreventionLevel* {.importc: "options.focusStealingPreventionLevel", nodecl.}: int
var legacyFullscreenSupport* {.importc: "options.legacyFullscreenSupport", nodecl.}: bool
var operationTitlebarDblClick* {.importc: "options.operationTitlebarDblClick", nodecl.}: TWindowOperation
var commandActiveTitlebar1* {.importc: "options.commandActiveTitlebar1", nodecl.}: TMouseCommand
var commandActiveTitlebar2* {.importc: "options.commandActiveTitlebar2", nodecl.}: TMouseCommand
var commandActiveTitlebar3* {.importc: "options.commandActiveTitlebar3", nodecl.}: TMouseCommand
var commandInactiveTitlebar1* {.importc: "options.commandInactiveTitlebar1", nodecl.}: TMouseCommand
var commandInactiveTitlebar2* {.importc: "options.commandInactiveTitlebar2", nodecl.}: TMouseCommand
var commandInactiveTitlebar3* {.importc: "options.commandInactiveTitlebar3", nodecl.}: TMouseCommand
var commandWindow1* {.importc: "options.commandWindow1", nodecl.}: TMouseCommand
var commandWindow2* {.importc: "options.commandWindow2", nodecl.}: TMouseCommand
var commandWindow3* {.importc: "options.commandWindow3", nodecl.}: TMouseCommand
var commandWindowWheel* {.importc: "options.commandWindowWheel", nodecl.}: TMouseCommand
var commandAll1* {.importc: "options.commandAll1", nodecl.}: TMouseCommand
var commandAll2* {.importc: "options.commandAll2", nodecl.}: TMouseCommand
var commandAll3* {.importc: "options.commandAll3", nodecl.}: TMouseCommand
var keyCmdAllModKey* {.importc: "options.keyCmdAllModKey", nodecl.}: int
var showGeometryTip* {.importc: "options.showGeometryTip", nodecl.}: bool
var condensedTitle* {.importc: "options.condensedTitle", nodecl.}: bool
var electricBorders* {.importc: "options.electricBorders", nodecl.}: bool
var electricBorderDelay* {.importc: "options.electricBorderDelay", nodecl.}: int
var electricBorderCooldown* {.importc: "options.electricBorderCooldown", nodecl.}: int
var electricBorderPushbackPixels* {.importc: "options.electricBorderPushbackPixels", nodecl.}: int
var electricBorderMaximize* {.importc: "options.electricBorderMaximize", nodecl.}: bool
var electricBorderTiling* {.importc: "options.electricBorderTiling", nodecl.}: bool
var electricBorderCornerRatio* {.importc: "options.electricBorderCornerRatio", nodecl.}: float
var borderlessMaximizedWindows* {.importc: "options.borderlessMaximizedWindows", nodecl.}: bool
var killPingTimeout* {.importc: "options.killPingTimeout", nodecl.}: int
var hideUtilityWindowsForInactive* {.importc: "options.hideUtilityWindowsForInactive", nodecl.}: bool
var inactiveTabsSkipTaskbar* {.importc: "options.inactiveTabsSkipTaskbar", nodecl.}: bool
var autogroupSimilarWindows* {.importc: "options.autogroupSimilarWindows", nodecl.}: bool
var autogroupInForeground* {.importc: "options.autogroupInForeground", nodecl.}: bool
var compositingMode* {.importc: "options.compositingMode", nodecl.}: int
var useCompositing* {.importc: "options.useCompositing", nodecl.}: bool
var compositingInitialized* {.importc: "options.compositingInitialized", nodecl.}: bool
var hiddenPreviews* {.importc: "options.hiddenPreviews", nodecl.}: int
var unredirectFullscreen* {.importc: "options.unredirectFullscreen", nodecl.}: bool
var glSmoothScale* {.importc: "options.glSmoothScale", nodecl.}: int
var glVSync* {.importc: "options.glVSync", nodecl.}: bool
var colorCorrected* {.importc: "options.colorCorrected", nodecl.}: bool
var xrenderSmoothScale* {.importc: "options.xrenderSmoothScale", nodecl.}: bool
var maxFpsInterval* {.importc: "options.maxFpsInterval", nodecl.}: int
var refreshRate* {.importc: "options.refreshRate", nodecl.}: int
var vBlankTime* {.importc: "options.vBlankTime", nodecl.}: int
var glDirect* {.importc: "options.glDirect", nodecl.}: bool
var glStrictBinding* {.importc: "options.glStrictBinding", nodecl.}: bool
var glStrictBindingFollowsDriver* {.importc: "options.glStrictBindingFollowsDriver", nodecl.}: bool
var glLegacy* {.importc: "options.glLegacy", nodecl.}: bool
proc configChanged*(callback: proc()) {.importc: "options.configChanged.connect".}
proc focusPolicyChanged*(callback: proc()) {.importc: "options.focusPolicyChanged.connect".}
proc nextFocusPrefersMouseChanged*(callback: proc()) {.importc: "options.nextFocusPrefersMouseChanged.connect".}
proc clickRaiseChanged*(callback: proc()) {.importc: "options.clickRaiseChanged.connect".}
proc autoRaiseChanged*(callback: proc()) {.importc: "options.autoRaiseChanged.connect".}
proc autoRaiseIntervalChanged*(callback: proc()) {.importc: "options.autoRaiseIntervalChanged.connect".}
proc delayFocusIntervalChanged*(callback: proc()) {.importc: "options.delayFocusIntervalChanged.connect".}
proc shadeHoverChanged*(callback: proc()) {.importc: "options.shadeHoverChanged.connect".}
proc shadeHoverIntervalChanged*(callback: proc()) {.importc: "options.shadeHoverIntervalChanged.connect".}
proc separateScreenFocusChanged*(callback: proc()) {.importc: "options.separateScreenFocusChanged.connect".}
proc activeMouseScreenChanged*(callback: proc()) {.importc: "options.activeMouseScreenChanged.connect".}
proc placementChanged*(callback: proc()) {.importc: "options.placementChanged.connect".}
proc borderSnapZoneChanged*(callback: proc()) {.importc: "options.borderSnapZoneChanged.connect".}
proc windowSnapZoneChanged*(callback: proc()) {.importc: "options.windowSnapZoneChanged.connect".}
proc centerSnapZoneChanged*(callback: proc()) {.importc: "options.centerSnapZoneChanged.connect".}
proc snapOnlyWhenOverlappingChanged*(callback: proc()) {.importc: "options.snapOnlyWhenOverlappingChanged.connect".}
proc showDesktopIsMinimizeAllChanged*(callback: proc()) {.importc: "options.showDesktopIsMinimizeAllChanged.connect".}
proc rollOverDesktopsChanged*(callback: proc()) {.importc: "options.rollOverDesktopsChanged.connect".}
proc focusStealingPreventionLevelChanged*(callback: proc()) {.importc: "options.focusStealingPreventionLevelChanged.connect".}
proc legacyFullscreenSupportChanged*(callback: proc()) {.importc: "options.legacyFullscreenSupportChanged.connect".}
proc operationTitlebarDblClickChanged*(callback: proc()) {.importc: "options.operationTitlebarDblClickChanged.connect".}
proc commandActiveTitlebar1Changed*(callback: proc()) {.importc: "options.commandActiveTitlebar1Changed.connect".}
proc commandActiveTitlebar2Changed*(callback: proc()) {.importc: "options.commandActiveTitlebar2Changed.connect".}
proc commandActiveTitlebar3Changed*(callback: proc()) {.importc: "options.commandActiveTitlebar3Changed.connect".}
proc commandInactiveTitlebar1Changed*(callback: proc()) {.importc: "options.commandInactiveTitlebar1Changed.connect".}
proc commandInactiveTitlebar2Changed*(callback: proc()) {.importc: "options.commandInactiveTitlebar2Changed.connect".}
proc commandInactiveTitlebar3Changed*(callback: proc()) {.importc: "options.commandInactiveTitlebar3Changed.connect".}
proc commandWindow1Changed*(callback: proc()) {.importc: "options.commandWindow1Changed.connect".}
proc commandWindow2Changed*(callback: proc()) {.importc: "options.commandWindow2Changed.connect".}
proc commandWindow3Changed*(callback: proc()) {.importc: "options.commandWindow3Changed.connect".}
proc commandWindowWheelChanged*(callback: proc()) {.importc: "options.commandWindowWheelChanged.connect".}
proc commandAll1Changed*(callback: proc()) {.importc: "options.commandAll1Changed.connect".}
proc commandAll2Changed*(callback: proc()) {.importc: "options.commandAll2Changed.connect".}
proc commandAll3Changed*(callback: proc()) {.importc: "options.commandAll3Changed.connect".}
proc keyCmdAllModKeyChanged*(callback: proc()) {.importc: "options.keyCmdAllModKeyChanged.connect".}
proc showGeometryTipChanged*(callback: proc()) {.importc: "options.showGeometryTipChanged.connect".}
proc condensedTitleChanged*(callback: proc()) {.importc: "options.condensedTitleChanged.connect".}
proc electricBordersChanged*(callback: proc()) {.importc: "options.electricBordersChanged.connect".}
proc electricBorderDelayChanged*(callback: proc()) {.importc: "options.electricBorderDelayChanged.connect".}
proc electricBorderCooldownChanged*(callback: proc()) {.importc: "options.electricBorderCooldownChanged.connect".}
proc electricBorderPushbackPixelsChanged*(callback: proc()) {.importc: "options.electricBorderPushbackPixelsChanged.connect".}
proc electricBorderMaximizeChanged*(callback: proc()) {.importc: "options.electricBorderMaximizeChanged.connect".}
proc electricBorderTilingChanged*(callback: proc()) {.importc: "options.electricBorderTilingChanged.connect".}
proc electricBorderCornerRatioChanged*(callback: proc()) {.importc: "options.electricBorderCornerRatioChanged.connect".}
proc borderlessMaximizedWindowsChanged*(callback: proc()) {.importc: "options.borderlessMaximizedWindowsChanged.connect".}
proc killPingTimeoutChanged*(callback: proc()) {.importc: "options.killPingTimeoutChanged.connect".}
proc hideUtilityWindowsForInactiveChanged*(callback: proc()) {.importc: "options.hideUtilityWindowsForInactiveChanged.connect".}
proc inactiveTabsSkipTaskbarChanged*(callback: proc()) {.importc: "options.inactiveTabsSkipTaskbarChanged.connect".}
proc autogroupSimilarWindowsChanged*(callback: proc()) {.importc: "options.autogroupSimilarWindowsChanged.connect".}
proc autogroupInForegroundChanged*(callback: proc()) {.importc: "options.autogroupInForegroundChanged.connect".}
proc compositingModeChanged*(callback: proc()) {.importc: "options.compositingModeChanged.connect".}
proc useCompositingChanged*(callback: proc()) {.importc: "options.useCompositingChanged.connect".}
proc compositingInitializedChanged*(callback: proc()) {.importc: "options.compositingInitializedChanged.connect".}
proc hiddenPreviewsChanged*(callback: proc()) {.importc: "options.hiddenPreviewsChanged.connect".}
proc unredirectFullscreenChanged*(callback: proc()) {.importc: "options.unredirectFullscreenChanged.connect".}
proc glSmoothScaleChanged*(callback: proc()) {.importc: "options.glSmoothScaleChanged.connect".}
proc glVSyncChanged*(callback: proc()) {.importc: "options.glVSyncChanged.connect".}
proc colorCorrectedChanged*(callback: proc()) {.importc: "options.colorCorrectedChanged.connect".}
proc xrenderSmoothScaleChanged*(callback: proc()) {.importc: "options.xrenderSmoothScaleChanged.connect".}
proc maxFpsIntervalChanged*(callback: proc()) {.importc: "options.maxFpsIntervalChanged.connect".}
proc refreshRateChanged*(callback: proc()) {.importc: "options.refreshRateChanged.connect".}
proc vBlankTimeChanged*(callback: proc()) {.importc: "options.vBlankTimeChanged.connect".}
proc glDirectChanged*(callback: proc()) {.importc: "options.glDirectChanged.connect".}
proc glStrictBindingChanged*(callback: proc()) {.importc: "options.glStrictBindingChanged.connect".}
proc glStrictBindingFollowsDriverChanged*(callback: proc()) {.importc: "options.glStrictBindingFollowsDriverChanged.connect".}
proc glLegacyChanged*(callback: proc()) {.importc: "options.glLegacyChanged.connect".}
proc isNextFocusPrefersMouse*(): bool {.importc: "options.isNextFocusPrefersMouse".}

