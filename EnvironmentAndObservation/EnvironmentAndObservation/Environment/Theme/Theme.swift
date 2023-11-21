//
//  Theme.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

protocol Theme {
    var background: Color { get }
    var mainTitle: Color { get }
    var subTitle: Color { get }
}

struct ThemeMonoPink: Theme {
    let background: Color = Color("MonoPink/background", bundle: nil)
    let mainTitle: Color = Color("MonoPink/title", bundle: nil)
    let subTitle: Color = Color("MonoPink/subtitle", bundle: nil)
}

struct ThemeDarkForest: Theme {
    let background: Color = Color("DarkForest/background", bundle: nil)
    let mainTitle: Color = Color("DarkForest/title", bundle: nil)
    let subTitle: Color = Color("DarkForest/subtitle", bundle: nil)
}
