//
//  OStore.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/22.
//

import Foundation
import Observation

@Observable
class OStore {
    var name: String = "test"
    var item: OItem = OItem()
}

@Observable
class OItem {
    var name: String = "item name"
    var price: Int = 0
}
