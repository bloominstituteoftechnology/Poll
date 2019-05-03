//
//  ColorStruct.swift
//  colorCounter
//
//  Created by Michael Redig on 4/14/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import Foundation
import UIKit


struct Color: Hashable, Codable {
	var red: UInt8
	var green: UInt8
	var blue: UInt8
	var alpha: UInt8
	
	var redFloat: CGFloat {
		return CGFloat(red) / CGFloat(255)
	}
	var greenFloat: CGFloat {
		return CGFloat(green) / CGFloat(255)
	}
	var blueFloat: CGFloat {
		return CGFloat(blue) / CGFloat(255)
	}
	var alphaFloat: CGFloat {
		return CGFloat(alpha) / CGFloat(255)
	}
	
	var uiColor: UIColor {
		return UIColor(red: redFloat, green: greenFloat, blue: blueFloat, alpha: alphaFloat)
	}
	
	var isDarkColor: Bool {
		return ((redFloat * 0.3) + (greenFloat * 0.59) + (blueFloat * 0.11)) < 0.5
	}
	
	var hexString: String {
		let redHex = String(format: "%02X", red)
		let greenHex = String(format: "%02X", green)
		let blueHex = String(format: "%02X", blue)
		return redHex + greenHex + blueHex
	}
	
	init(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8 = 255) {
		self.red = red
		self.green = green
		self.blue = blue
		self.alpha = alpha
	}
	
	static func distanceBetween(colorA: Color, colorB: Color) -> CGFloat {
		return sqrt(pow((colorA.redFloat-colorB.redFloat), 2) + pow((colorA.greenFloat-colorB.greenFloat), 2) + pow((colorA.blueFloat-colorB.blueFloat), 2))
	}
	
	func distanceTo(color: Color) -> CGFloat {
		return Color.distanceBetween(colorA: self, colorB: color)
	}
	
	mutating func stochasticize(with granularity: UInt8, includeAlpha: Bool = false) {
		red = (red / granularity) * granularity
		green = (green / granularity) * granularity
		blue = (blue / granularity) * granularity
		if includeAlpha {
			alpha = (alpha / granularity) * granularity
		}
	}
	
	mutating func average(with newColor: Color, currentCount: Int, includeAlpha: Bool = false) {
		red = calculateAverage(existingValue: red, newValue: newColor.red, currentCount: currentCount)
		green = calculateAverage(existingValue: green, newValue: newColor.green, currentCount: currentCount)
		blue = calculateAverage(existingValue: blue, newValue: newColor.blue, currentCount: currentCount)
		if includeAlpha {
			alpha = calculateAverage(existingValue: alpha, newValue: newColor.alpha, currentCount: currentCount)
		}
	}
	
	func calculateAverage(existingValue: UInt8, newValue: UInt8, currentCount: Int) -> UInt8 {
		guard currentCount >= 1 else { return existingValue }
		return UInt8((CGFloat(existingValue) * CGFloat(currentCount) + CGFloat(newValue)) / CGFloat(currentCount + 1))
	}
}

struct ColorStructDict: Codable {
	let colorsByName: [String: Color]
	
	static func getColor(named proposedColorName: String) -> Color? {
		guard let namedColors = namedColors else { fatalError("Couldn't load color names") }
		
		let proposedNameLC = proposedColorName.lowercased().replacingOccurrences(of: ##"\s+"##, with: "", options: .regularExpression, range: nil)
		
		var closestColor: (name: String, color: Color)?
		for (name, color) in namedColors {
			if name.lowercased() == proposedNameLC {
				return color
			} else if name.lowercased().contains(proposedNameLC) {
				closestColor = (name, color)
			}
		}
		
		return closestColor?.color
	}
	
	static func getNameForColor(color: Color, unCamelcase: Bool = true) -> (name: String, isExact: Bool) {
		guard let namedColors = namedColors else { fatalError("Couldn't load color names") }
		
		var nearestName: String = ""
		var nearestDistance: CGFloat = 15
		for (name, namedColor) in namedColors {
			let distance = color.distanceTo(color: namedColor)
			if distance < nearestDistance {
				nearestDistance = distance
				nearestName = name
			}
			if nearestDistance == 0 {
				if unCamelcase {
					nearestName = ColorStructDict.unCamelcase(string: nearestName)
				}
				return (nearestName, true)
			}
		}
		
		if unCamelcase {
			nearestName = ColorStructDict.unCamelcase(string: nearestName)
		}
		return (nearestName, false)
	}
	
	private static func unCamelcase(string: String) -> String {
		let array = Array(string)
		var outStr = ""
		for (index, letter) in array.enumerated() {
			if index == 0 {
				outStr += String(letter).uppercased()
			} else if (letter.isUppercase) {
				outStr += " \(letter)"
			} else {
				outStr += String(letter)
			}
		}
		return outStr
	}
	
	static var namedColors: [String: Color]? = {
		guard let jsonURL = Bundle.main.url(forResource: "colorNames", withExtension: "json") else { return nil }
		guard let jsonData = try? Data(contentsOf: jsonURL) else { return nil }
		
		let decoder = JSONDecoder()
		let theDict = try? decoder.decode(ColorStructDict.self, from: jsonData).colorsByName
		return theDict
	}()
}
