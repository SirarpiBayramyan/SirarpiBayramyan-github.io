//
//  MainDSColors.swift
//  picsart
//
//  Created by Sirarpi Bayramyan on 20.07.21.
//  Copyright © 2021 Socialin Inc. All rights reserved.
//
#if canImport(UIKit)
import UIKit

@objc
extension DSColor {
    // MARK: Typography Colors

    /// light hex: 080808, dark hex: FFFFFF
    static let typographyPrimary = DSColor(named: "typographyPrimary")!

    /// hex: FFFFFF
    static let editorTypographyPrimary = DSColor(named: "editorTypographyPrimary")!

    /// light hex: F5F5F5 dark hex: 8E8E93
    static let typographySecondary = DSColor(named: "typographySecondary")!

    /// hex: 8E8E93
    static let editorTypographySecondary = DSColor(named: "editorTypographySecondary")

    /// light hex: 9D9D9D dark hex: 636369
    static let typographyDisabled = DSColor(named: "typographyDisabled")

    /// hex: 636369
    static let editorTypographyDisabled = DSColor(named: "editorTypographyDisabled")

    /// light hex: 5A00EE dark hex: 72FFEA
    static let typographyLink = DSColor(named: "typographyLink")!

    /// hex: 72FFEA
    static let editorTypographyLink = DSColor(named: "editorTypographyLink")!

    /// light hex: C209C1  dark hex: 9C66F5
    static let typographyHoverLink = DSColor(named: "typographyHoverLink")!

    /// hex: 9C66F5
    static let editorTypographyHoverLink = DSColor(named: "editorTypographyHoverLink")!

    /// light hex: 5A00EE  dark hex: 72FFEA
    static let typographyLink2 = DSColor(named: "typographyLink2")!

    /// hex: 72FFEA
    static let editorTypographyLink2 = DSColor(named: "editorTypographyLink2")!

    // MARK: Status Colors

    /// light hex:  007675  dark hex: 72FFEA
    static let statusSuccess = DSColor(named: "statusSuccess")!

    /// hex: 72FFEA
    static let editorStatusSuccess = DSColor(named: "editorStatusSuccess")!

    /// light hex: E7000A  dark hex: F33462
    static let statusError = DSColor(named: "statusError")!

    /// hex: F33462
    static let editorStatusError = DSColor(named: "editorStatusError")

    /// light hex: F67E0C  dark hex: D7C310
    static let statusWarning = DSColor(named: "statusWarning")!

    /// hex: D7C310
    static let editorStatusWarning = DSColor(named: "editorStatusWarning")!

    // MARK: Background Colors

    /// light hex: FFFFFF  dark hex: 121212
    static let primaryBackground = DSColor(named: "primaryBackground")!

    /// hex: 121212
    static let editorPrimaryBackground = DSColor(named: "editorPrimaryBackground")!

    /// light hex: F8F8F8 dark hex: 1C1C1C
    static let tint1Background = DSColor(named: "tint1Background")!

    /// hex: 1C1C1C
    static let editorTint1Background = DSColor(named: "editorTint1Background")!

    /// light hex: D8D8D8 dark hex: 262628
    static let tint2Background = DSColor(named: "tint2Background")!

    /// hex: 262628
    static let editorTint2Background = DSColor(named: "editorTint2Background")!

    /// light hex: E0E0E0 dark hex: 313132
    static let tint3Background = DSColor(named: "tint3Background")!

    /// hex: 313132
    static let editorTint3Background = DSColor(named: "editorTint3Background")!

    /// light hex: CBCBCB dark hex: 5E5E61
    static let tint4Background = DSColor(named: "tint4Background")!

    /// hex: 5E5E61
    static let editorTint4Background = DSColor(named: "editorTint4Background")!

    /// light hex: B7B7B7 dark hex: 777778
    static let tint5Background = DSColor(named: "tint5Background")!

    /// hex: 777778
    static let editorTint5Background = DSColor(named: "editorTint5Background")!

    // MARK: Transparent Backgrounds

    /// light hex: FFFFFF  dark hex: 121212  alpha:72%
    static let transparentPrimaryBackground = DSColor.primaryBackground.withAlphaComponent(0.72)

    /// hex: 121212  alpha:72%
    static let editorTransparentPrimaryBackground = DSColor.editorPrimaryBackground.withAlphaComponent(0.72)

    /// light hex: FFFFFF  dark hex: 121212  alpha:88%
    static let transparentLinearBackground = DSColor.primaryBackground.withAlphaComponent(0.88)

    /// hex: 121212  alpha:88%
    static let editorTransparentLinearBackground = DSColor.editorPrimaryBackground.withAlphaComponent(0.88)

    // MARK: Product Main Colors

    /* light:magenta   dark:turquoise */

    /// light hex: AC00A6, dark hex: 00C5C3
    static let hover = DSColor(named: "hover")!

    /// hex: 00C5C3
    static let editorHover = DSColor(named: "editorHover")!

    /// light hex: C208C1(magenta) dark hex: 72FFEA   (turquoise)
    static let primary = DSColor(named: "primary")!

    /// hex: 72FFEA (turquoise)
    static let editorPrimary = DSColor(named: "editorPrimery")!

    /// light hex: CE3ACD dark hex: 00C5C3
    static let tint1 = DSColor(named: "tint1")!

    /// hex: 00C5C3
    static let editorTint1 = DSColor(named: "editorTint1")!

    /// light hex: DA6BDA dark hex: 009E9C
    static let tint2 = DSColor(named: "tint2")!

    /// hex:  009E9C
    static let editorTint2 = DSColor(named: "editorTint2")!

    /// light hex: E79DE6 dark hex: 007675
    static let tint3 = DSColor(named: "tint3")!

    /// hex:  007675
    static let editorTint3 = DSColor(named: "editorTint3")!

    /// light hex: F6E8F1 dark hex: 004F4E
    static let tint4 = DSColor(named: "tint4")!

    /// hex:  004F4E
    static let editorTint4 = DSColor(named: "editorTint4")!

    /* light:Purple   dark:Lavender */

    /// light hex: 5A00EE  dark hex: 7B33F1
    static let primaryPurple = DSColor(named: "primaryPurple")!

    /// hex:  7B33F1
    static let editorPrimaryPurple = DSColor(named: "editorPrimaryPurple")!

    /// light hex: 4E00CC dark hex: 4400B5
    static let hoverPurple = DSColor(named: "hoverPurple")!

    /// hex:  4400B5
    static let editorHoverPurple = DSColor(named: "editorHoverPurple")!

    /// light hex: 7B33F1 dark hex: 5300DB
    static let tint1Purple = DSColor(named: "tint1Purple")!

    /// hex:  5300DB
    static let editorTint1Purple = DSColor(named: "editorTint1Purple")!

    /// light hex: 9C66F5 dark hex: 4400B5
    static let tint2Purple = DSColor(named: "tint2Purple")!

    /// hex:  4400B5
    static let editorTint2Purple = DSColor(named: "editorTint2Purple")!

    /// light hex: BD99F8 dark hex: 3D00A2
    static let tint3Purple = DSColor(named: "tint3Purple")!

    /// hex:  3D00A2
    static let editorTint3Purple = DSColor(named: "editorTint2Purple")!

    /// light hex: C9B6F0 dark hex: 2F007C
    static let tint4Purple = DSColor(named: "tint4Purple")!

    /// hex:  2F007C
    static let editorTint4Purple = DSColor(named: "editorTint4Purple")!

    /* ___________________________________________________________ */

    // MARK: Camera colors

    /// hex : 181818  alpha: 80%
    static let dsEffectSettingsBackground = DSColor(named: "effectSettingsBackground")

    // MARK: Product Design Brand

    /// hex: F6E8F1
    static var productPink = DSColor(named: "productPink")!

    /// hex: 72FFEA
    static var turquoise = DSColor(named: "editorPrimary")!

    /// hex: 222222 : picsArtMainDark --> darkSlide
    static var darkSlide = DSColor(named: "darkSlide")!

    /// hex: E5202C
    static var errorRed = DSColor(named: "errorRed")!

    /// hex: 158380
    static var successGreen = DSColor(named: "successGreen")!

    /// hex: C208C1
    static var dsMagenta = DSColor(named: "primary")! // paMagenta

    /// hex: 5A00EE
    static var dsPurple = DSColor(named: "primaryPurple")! // paPurple

    // ExperimentalSectionColors
    static func getBarButtonSelectedDSColor(alpha: CGFloat = 1) -> DSColor { // getBarButtonSelectedColor
        return DSColor(dsColor: .turquoise, alpha: alpha)
    }

    /* ___________________________________________________________ */

    // MARK: Dark/Light

    /// light hex: FCFCFC, dark hex: 141414
    static let dsBackgroundColor = DSColor(named: "canvas")!

    /// light hex: F8F8F8, dark hex: 1F1F1F
    static let dsPrimaryNavColor = DSColor(named: "primaryNavigation")!

    /// light hex: 000000, dark hex: FFFFFF
    static let dsTypographyColor = DSColor(named: "typography")!

    /// light hex: 272727, dark hex: FCFCFC
    static let dsIconColor = DSColor(named: "icon")!

    // Progress Bar
    /// light hex: F6F6F6, dark hex: 2D2D2D
    static let dsProgressBarBackground = DSColor(named: "progressBarBg")!

    // Editor
    /// hex : 242424
    static let dsEditorSecondaryNavColor = DSColor(named: "editorSecondaryNavigation")!

    /// hex : 272727  alpha: 60%
    static let dsEditorSettingsColor = DSColor(named: "editorSettings")!

    // editor colors
    static let dsEditorBackgroundColor = DSColor(named: "editorCanvas")!

    // hex: 1F1F1F
    static let dsEditorPrimaryNavColor = DSColor(named: "editorPrimaryNavigation")!

    /// hex : FFFFFF
    static let dsEditorTypographyColor = DSColor(named: "editorTypography")!

    /// hex : FCFCFC
    static let dsEditorIconColor = DSColor(named: "editorIcon")!

    /// hex : 272727
    static let dsArrowButtonBgColor = DSColor(named: "arrowButtonBackground")!

    // colors with alpha
    static let dsBGColorWithAlpha40 = dsBackgroundColor.withAlphaComponent(0.4)

    static let dsBGColorWithAlpha50 = dsBackgroundColor.withAlphaComponent(0.5)

    static let dsEditorBGColorWithAlpha30 = dsEditorBackgroundColor.withAlphaComponent(0.3)

    static let dsEditorBGColorWithAlpha40 = dsEditorBackgroundColor.withAlphaComponent(0.4)

    static let dsEditorBGColorWithAlpha50 = dsEditorBackgroundColor.withAlphaComponent(0.5)

    static let dsEditorBGColorWithAlpha70 = dsEditorBackgroundColor.withAlphaComponent(0.7)

    /// light hex: F6F6F6, dark hex: 2C2C2C  (works for dark)
    static let dsSecondaryLayerBgColor = DSColor(named: "secondary_layer_background_color")!

    /// light hex: 2C2C2C, dark hex: F6F6F6 (works for dark)
    static let dsSecondaryLayerLoadColor = DSColor(named: "secondary_layer_loading_color")!

    static let dsSecondaryLayerLoadColorAlpha10 = dsSecondaryLayerLoadColor.withAlphaComponent(0.1)

    /// light hex: 232323, dark hex: FDFDFD (works for dark)
    static let dsSecondaryLayerTitleColor = DSColor(named: "secondary_layer_title_color")!

    /// light hex: 474747, dark hex: D9D9D9 (works for dark)
    static let dsSecondaryLayerSubtitleColor = DSColor(named: "secondary_layer_subtitle_color")!



    // MARK: Other barands
    /// 25D377
    static let dsWhatsAppGreen = DSColor(hexString: "25D377")
    /// 3B5998
    static let dsFbColor = DSColor(hexString: "3B5998")
    /// 4871A7
    static let dsVkColor = DSColor(hexString: "4871A7")
    /// FFFC00
    static let dsSnapchatColor = DSColor(hexString: "FFFC00")
    /// E6162D
    static let dsWeiboColor = DSColor(hexString: "E6162D")
    /// 00B900
    static let dsLineColor = DSColor(hexString: "00B900")
    /// 7bb32e
    static let dsWeChatColor = DSColor(hexString: "7bb32e")
    /// 1EB8F3
    static let dsQqColor = DSColor(hexString: "1EB8F3")
}
#endif
