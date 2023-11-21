//
//  RootView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct RootView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var flowObject = RootFlowObject()
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.gray
                .ignoresSafeArea()
            
            switch flowObject.viewType {
            case .splash:
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            flowObject.viewType = .register
                        }
                    }
            case .register:
                NavigationStack {
                    RegisterView()
                }
                .environmentObject(flowObject) // 처음엔 주입하지 않고 테스트해보기
            case .home:
                HomeView()
                    .environmentObject(flowObject)
            }
            
            Button("<") {
                dismiss()
            }
            .padding(.leading, 20)
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("")
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    RootView()
}
