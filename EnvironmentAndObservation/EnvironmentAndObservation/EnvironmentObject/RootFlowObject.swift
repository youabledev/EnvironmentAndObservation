//
//  RootFlowObject.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import Foundation

class RootFlowObject: ObservableObject {
    enum CurrentViewType {
        case splash
        case register
        case home
    }
    
    @Published var viewType: CurrentViewType = .splash
}
