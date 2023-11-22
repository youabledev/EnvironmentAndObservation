//
//  ContentView.swift
//  EnvironmentAndObservation
//
//  Created by zumin you on 2023/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section("environment") {
                    NavigationLink("Environment RToL Test") {
                        EnvironmentRToLTestView()
                    }
                    
                    NavigationLink("Dismiss Test") {
                        DismissTestView()
                    }
                    
                    NavigationLink("OpenURL Test") {
                        OpenURLTestView()
                    }
                    
                    NavigationLink("Custom Environment View") {
                        CustomEnvironmentTestView()
                    }
                    
                    NavigationLink("Custom Theme") {
                        ThemeView()
                    }
                } //: Section
                
                Section("environment object") {
                    NavigationLink("Flow Test") {
                        RootView()
                    }
                } //: Section
                
                Section("Observation") {
                    NavigationLink("Observation Test View") {
                        StoreTestView()
                    }
                    
                    NavigationLink("Bindable") {
                        BindableTestView()
                    }
                    
                    NavigationLink("Child Observable") {
                        ItemTestView()
                    }
                }
            } //: List
        } //: NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
