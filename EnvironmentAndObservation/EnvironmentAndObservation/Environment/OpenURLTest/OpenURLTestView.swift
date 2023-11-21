//
//  OpenURLTestView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct OpenURLTestView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        VStack {
            Button("google") {
                UIApplication.shared.open(URL(string: "https://www.google.com")!)
            }
            Button("naver") {
                openURL(URL(string: "https://www.naver.com")!)
            }
        }
    }
}

#Preview {
    OpenURLTestView()
}
