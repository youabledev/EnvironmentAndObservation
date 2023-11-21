//
//  CountEnvironment.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI // *

struct CountKey: EnvironmentKey {
    static var defaultValue: Int = 100
}

extension EnvironmentValues {
    var customCounter: Int {
        get { self[CountKey.self] }
        set { self[CountKey.self] = newValue }
    }
}
