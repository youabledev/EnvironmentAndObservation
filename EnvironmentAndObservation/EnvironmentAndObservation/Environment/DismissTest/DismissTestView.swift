//
//  DismissTestView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct DismissTestView: View {
    @State private var isShowSheet: Bool = false
    
    var body: some View {
        Button("full screen modal") {
            isShowSheet.toggle()
        }
        .fullScreenCover(isPresented: $isShowSheet) {
            DismissChildTestView()
        }
    }
}

struct DismissChildTestView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button("dismiss") {
                dismiss()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    DismissTestView()
}
