//
//  RToLTestView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct RToLTestView: View {
    var body: some View {
        HStack {
                Text("오늘 날씨")
                Image(systemName: "sun.min.fill")
                Text("맑음")
                    .foregroundStyle(.red)
        } //: HStack
    }
}

#Preview {
    RToLTestView()
}
