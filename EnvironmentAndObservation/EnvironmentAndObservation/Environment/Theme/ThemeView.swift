//
//  ThemeView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct ThemeView: View {
    @State private var theme: Theme = ThemeMonoPink()
    
    var body: some View {
        VStack {
            ThemeChildView()
                .environment(\.customTheme, theme)
            
            HStack {
                Circle()
                    .fill(ThemeDarkForest().background)
                    .frame(width: 50)
                    .onTapGesture {
                        theme = ThemeDarkForest()
                    }
                Circle()
                    .fill(ThemeMonoPink().background)
                    .frame(width: 50)
                    .onTapGesture {
                        theme = ThemeMonoPink()
                    }
            } //: HStack
        } //: VStack
        .transformEnvironment(\.customTheme) {
            dump($0)
        }
    }
}

#Preview {
    ThemeView()
}
