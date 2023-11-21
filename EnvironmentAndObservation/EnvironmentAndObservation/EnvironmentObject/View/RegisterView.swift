//
//  RegisterView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/22.
//

import SwiftUI

struct RegisterView: View {
    @State private var id: String = ""
    
    var body: some View {
        VStack {
            Text("회원가입")
            TextField("id 입력", text: $id)

            NavigationLink {
                PasswordView()
                    
            } label: {
                Text("다음")
            }
            .disabled(id.isEmpty)
        } //: VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.yellow)
    }
}

#Preview {
    RegisterView()
}
