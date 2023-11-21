//
//  PasswordView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/22.
//

import SwiftUI

struct PasswordView: View {
    @EnvironmentObject var flowObject: RootFlowObject
    @State private var pw: String = ""
    
    var body: some View {
        VStack {
            Text("회원가입")
            TextField("pw 입력", text: $pw)

            Button("다음") {
                DispatchQueue.main.async {
                    flowObject.viewType = .home
                }
            }
            .buttonStyle(.borderedProminent)
            .disabled(pw.isEmpty)
        } //: VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.orange)
    }
}

#Preview {
    PasswordView()
}
