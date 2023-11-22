//
//  StoreTestView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/22.
//

import SwiftUI

struct StoreTestView: View {
    @State private var store = OStore()
    
    var body: some View {
        VStack {
            StoreTestChildView()
                .environment(store)
            
            TextField("텍스트 입력", text: $store.name)
                .background(.yellow)
        }
    }
}

struct StoreTestChildView: View {
    @Environment(OStore.self) var store
    
    var body: some View {
        VStack {
            Text(store.name)
        }
    }
}

#Preview {
    StoreTestView()
}
