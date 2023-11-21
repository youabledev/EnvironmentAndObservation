//
//  CustomEnvironmentTestView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct CustomEnvironmentTestView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            // environment 주입 x
            CustomEnvironmentTestChildView()
            
            // environment 주입 0
            CustomEnvironmentTestChildView()
                .environment(\.customCounter, count)
            
            HStack {
                Button("+") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
                
                Button("-") {
                    count -= 1
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    CustomEnvironmentTestView()
}
