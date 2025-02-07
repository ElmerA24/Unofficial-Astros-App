//
//  Color.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/6/25.
//

import Foundation
import SwiftUI

extension Color
{
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
    
}

struct ColorTheme
{
    let letters = Color("Letter")
    let background = Color("Background")
}

struct LaunchTheme
{
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackGroundColor")
}
