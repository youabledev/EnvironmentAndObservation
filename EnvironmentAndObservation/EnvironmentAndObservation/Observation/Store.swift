//
//  Store.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/22.
//

import Foundation
import Combine

//class Store: ObservableObject {
//    @Published var name: String = ""
//    @Published var item: Item = Item()
//}

class Store: ObservableObject {
    @Published var name: String = ""
    @Published var item: Item = Item()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        item.objectWillChange
            .sink { [weak self] _ in
                self?.objectWillChange.send()
            }
            .store(in: &cancellables)
    }
}

class Item: ObservableObject {
    @Published var name: String = "item name"
    @Published var price: Int = 0
}

