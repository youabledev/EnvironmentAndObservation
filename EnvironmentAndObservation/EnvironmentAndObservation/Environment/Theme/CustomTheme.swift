//
//  CustomTheme.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct ThemeKey: EnvironmentKey {
    static var defaultValue: Theme = ThemeMonoPink()
}

extension EnvironmentValues {
    var customTheme: Theme {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

extension View {
    func customTheme(_ theme: Theme) -> some View {
        environment(\.customTheme, theme)
    }
}
