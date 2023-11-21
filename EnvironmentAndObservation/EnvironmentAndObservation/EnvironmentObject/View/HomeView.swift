//
//  HomeView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var flowObject: RootFlowObject
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                Text("환영합니다! 홈입니다!")
                Button("로그아웃") {
                    flowObject.viewType = .register
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    HomeView()
}
