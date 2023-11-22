//
//  ItemTestView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/22.
//

import SwiftUI

struct ItemTestView: View {
    @State private var ostore = OStore()
    @ObservedObject private var store = Store()
    
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            Text("Observation")
                .font(.headline)
            Text(ostore.item.name)
            TextField("item name", text: $ostore.item.name)
            Button("name change") {
                ostore.item.name = "name changed!!"
            }
            
            Rectangle()
                .frame(height: 2)
                .frame(maxWidth: .infinity)
            
            Text("ObservableObject")
                .font(.headline)
            Text(store.item.name)
            TextField("item name", text: $store.item.name)
            Button("name change") {
                store.item.name = "name changed!!"
            }
        }
    }
}

#Preview {
    ItemTestView()
}
