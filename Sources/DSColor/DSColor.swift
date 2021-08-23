//
//  DSColor.swift
//  picsart
//
//  Created by Sirarpi Bayramyan on 13.07.21.
//  Copyright © 2021 Socialin Inc. All rights reserved.
//
#if canImport(UIKit)
import UIKit

@objcMembers
/// DSColor covers the UIColor AP
///  Design System Colors defined on assets catalog, so they supports Dark/Light modes
/// (color names will be changed after designers disscussions)
///
///  (usage example in Swift)
///
///  colorView.backgroundColor = DSColor.primary
///
///  (usage example in objective C )
///
///  colorLabel.textColor = [DSColor typographySecondary];
///
///  (usage example in SwiftUI )
///
///  let backgroundColor = Color(DSColor.primary)
///
///  let color1 = Color("primaryPurple")
///
///   var body: some View {
///     .background(backgroundColor)
///   }
class DSColor: UIColor {
    // MARK: Initializers

    /// Creates DSColor by hex value and alpha
    /// - Parameters:
    ///   - hexString: color hex value by string
    ///   - alpha: The opacity value of the color object, specified as a value from 0.0 to 1.0. Alpha values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        let hexString = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x0000_00FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue = CGFloat(b) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    /// Creates DSColor by other dsColor and alpha
    /// - Parameters:
    ///   - dsColor: other DSColor
    ///   - alpha: The opacity value of the color object, specified as a value from 0.0 to 1.0. Alpha values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0
    convenience init(dsColor: DSColor, alpha: CGFloat) {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        dsColor.getRed(&r, green: &g, blue: &b, alpha: nil)
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
    // MARK: Static methods
    
    /// Creates DSColor by RGB values
    static func dsColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> DSColor {
        return DSColor(red: red, green: green, blue: blue, alpha: alpha)
    }

    /// Creates a DSColor object using the specified opacity and grayscale values.
    /// - Parameters:
    ///   - white: The grayscale value of the color object. On applications linked for iOS 10 or later, the color is specified in an extended color space, and the input value is never clamped. On earlier versions of iOS, white values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0.
    ///   - alpha: The opacity value of the color object, specified as a value from 0.0 to 1.0. Alpha values below 0.0 are interpreted as 0.0, and values above 1.0 are interpreted as 1.0
    /// - Returns: An initialized dscolor object. The color information represented by this object is in the device gray colorspace.
    static func dsColor(with white: CGFloat, alpha: CGFloat) ->
        DSColor {
        return DSColor(white: white, alpha: alpha)
    }

    static func dsColor(hexString: String) -> DSColor {
        return DSColor(hexString: hexString, alpha: 1)
    }

    /// Creates color by an hexadecimal integer value (e.g. 0xFFFFFF)
    /// - Parameter color: Hexadecimal integer for color
    /// - Returns:  DSColor instance.
    static func hexRGBA(dsColor: Int) -> DSColor {
        let red = CGFloat(0xFF & (dsColor >> 0)) / 255.0
        let green = CGFloat(0xFF & (dsColor >> 8)) / 255.0
        let blue = CGFloat(0xFF & (dsColor >> 16)) / 255.0
        let alpha = CGFloat(0xFF & (dsColor >> 24)) / 255.0

        return DSColor(red: red, green: green, blue: blue, alpha: alpha)
    }

    static func dsColorFromHex(color: Int, withOpacity opacity: Int) -> DSColor {
        let red = CGFloat(Double(0xFF & (color >> 16)) / 255.0)
        let green = CGFloat(Double(0xFF & (color >> 8)) / 255.0)
        let blue = CGFloat(Double(0xFF & color) / 255.0)
        let alpha = CGFloat(Double(opacity) / 255.0)
        return DSColor(red: red, green: green, blue: blue, alpha: alpha)
    }

    static func dsColorFromHex(color: Int) -> DSColor {
        return DSColor.dsColorFromHex(color: color, withOpacity: 255)
    }

    static func fromDsARGBString(hexString: String?) -> DSColor {
        var argbValue: UInt64 = 0
        let scanner = Scanner(string: hexString ?? "")
        scanner.scanHexInt64(&argbValue)

        let blue = Int(argbValue & 0xFF)
        let green = Int(argbValue >> 8 & 0xFF)
        let red = Int(argbValue >> 16 & 0xFF)
        let alpha = Int(argbValue >> 24 & 0xFF)

        return DSColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0,
                       alpha: CGFloat(alpha) / 255.0)
    }

    /// Creates DSColor with 'alpha' component
    static func dsColor(color: DSColor, alpha: CGFloat) -> DSColor {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: nil)
        return DSColor(red: r, green: g, blue: b, alpha: alpha)
    }

    static func dsInterpolatedDsColor(from fromColor: DSColor, to toColor: DSColor,
                                      fraction: CGFloat) -> DSColor {
        var fromColor = fromColor
        var toColor = toColor
        fromColor = fromColor.dsRgbFromGrayscale()
        toColor = toColor.dsRgbFromGrayscale()

        var fromRed: CGFloat = 0
        var fromGreen: CGFloat = 0
        var fromBlue: CGFloat = 0
        var fromAlpha: CGFloat = 0

        fromColor.getRed(&fromRed, green: &fromGreen, blue: &fromBlue, alpha: &fromAlpha)

        var toRed: CGFloat = 0
        var toGreen: CGFloat = 0
        var toBlue: CGFloat = 0
        var toAlpha: CGFloat = 0

        fromColor.getRed(&toRed, green: &toGreen, blue: &toBlue, alpha: &toAlpha)
        let newRed: CGFloat = (1.0 - fraction) * fromRed + fraction * toRed
        let newGreen: CGFloat = (1.0 - fraction) * fromGreen + fraction * toGreen
        let newBlue: CGFloat = (1.0 - fraction) * fromBlue + fraction * toBlue
        let newAlpha: CGFloat = (1.0 - fraction) * fromAlpha + fraction * toAlpha
        return DSColor(red: newRed, green: newGreen, blue: newBlue, alpha: newAlpha)
    }

    private func dsRgbFromGrayscale() -> DSColor {
        let model = cgColor.colorSpace?.model
        if model == .monochrome {
            let components = cgColor.components
            return DSColor(red: components?[0] ?? 0.0, green: components?[0] ?? 0.0, blue: components?[0] ?? 0.0,
                           alpha: components?[1] ?? 0.0)
        }
        return self
    }

    static func dsAlphaBlendingResult(withDestinationColor destination: DSColor,
                                      sourceColor source: DSColor) -> DSColor {
        var dr: CGFloat = 0
        var dg: CGFloat = 0
        var db: CGFloat = 0
        var da: CGFloat = 0

        destination.getRed(&dr, green: &dg, blue: &db, alpha: &da)

        var sr: CGFloat = 0
        var sg: CGFloat = 0
        var sb: CGFloat = 0
        var sa: CGFloat = 0
        source.getRed(&sr, green: &sg, blue: &sb, alpha: &sa)

        let rr = Float((dr - (sr * sa)) / (1 - sa))
        let rg = Float((dg - (sg * sa)) / (1 - sa))
        let rb = Float((db - (sb * sa)) / (1 - sa))

        return DSColor(red: CGFloat(rr), green: CGFloat(rg), blue: CGFloat(rb), alpha: da)
    }

    static func gradientDsColorFrom(maincolor: DSColor, secondaryColor: DSColor, withSize size: CGSize) -> DSColor {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        let colorspace = CGColorSpaceCreateDeviceRGB()

        let colors = [maincolor.cgColor, secondaryColor.cgColor] as CFArray

        let gradient = CGGradient(colorsSpace: colorspace, colors: colors, locations: nil)
        context!.drawLinearGradient(gradient!,
                                    start: CGPoint(x: 0, y: 0),
                                    end: CGPoint(x: size.width, y: 0),
                                    options: CGGradientDrawingOptions(rawValue: UInt32(0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()

        let finalCColor = DSColor(patternImage: image!)
        return finalCColor
    }

    static func dsColorfromString(_ value: String) -> DSColor? {
        let colorString = value.replacingOccurrences(of: "#", with: "").replacingOccurrences(of: "0x", with: "")
        switch colorString.count {
        case 8:
            return DSColor.fromDsARGBString(hexString: colorString)
        default:
            return DSColor(hexString: colorString)
        }
    }
}

#endif
