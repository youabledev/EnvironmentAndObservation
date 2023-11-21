//
//  EnvironmentRToLTestView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct EnvironmentRToLTestView: View {
    var body: some View {
        VStack {
            // environment 설정을 안한 뷰
            RToLTestView()
            
            // environment 설정 한 뷰
            RToLTestView()
                .environment(\.layoutDirection, .leftToRight)
            
            // environment 설정 한 뷰
            RToLTestView()
                .environment(\.layoutDirection, .rightToLeft)
        }
    }
}

#Preview {
    EnvironmentRToLTestView()
}
