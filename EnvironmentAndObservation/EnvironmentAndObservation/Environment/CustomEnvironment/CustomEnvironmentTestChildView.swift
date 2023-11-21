//
//  CustomEnvironmentTestChildView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct CustomEnvironmentTestChildView: View {
    @Environment(\.customCounter) var customCounter
    
    var body: some View {
        Text("\(customCounter)") // 주입되지 않는 경우 기본 값
    }
}

#Preview {
    CustomEnvironmentTestChildView()
}
