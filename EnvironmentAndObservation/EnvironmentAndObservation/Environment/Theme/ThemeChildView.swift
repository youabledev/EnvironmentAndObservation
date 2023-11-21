//
//  ThemeChildView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct ThemeChildView: View {
    @Environment(\.customTheme) var themeColor
    
    var body: some View {
        let _ = dump(themeColor)
        VStack {
            Text("title")
                .font(.largeTitle)
                .foregroundStyle(themeColor.mainTitle)
            Text("subtitle")
                .font(.title)
                .foregroundStyle(themeColor.subTitle)
        }
        .frame(width: 200, height: 200)
        .background(themeColor.background)
    }
}

#Preview {
    ThemeChildView()
}
