//
//  BindableTestView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/22.
//

import SwiftUI

struct BindableTestView: View {
    @State private var store = OStore()
    
    var body: some View {
        VStack {
            BindableTestChildView(store: store)
            TextField("parent", text: $store.name)
                .background(.yellow)
        }
    }
}

struct BindableTestChildView: View {
    @Bindable var store: OStore
    
    var body: some View {
        VStack {
            Text(store.name)
            TextField("child", text: $store.name)
                .background(.green)
        }
    }
}

#Preview {
    BindableTestView()
}
