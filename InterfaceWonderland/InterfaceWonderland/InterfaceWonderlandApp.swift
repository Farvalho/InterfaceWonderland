//
//  InterfaceWonderlandApp.swift
//  InterfaceWonderland
//
//  Created by Fábio Carvalho on 09/09/2022.
//

import SwiftUI

@main
struct InterfaceWonderlandApp: App {
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
