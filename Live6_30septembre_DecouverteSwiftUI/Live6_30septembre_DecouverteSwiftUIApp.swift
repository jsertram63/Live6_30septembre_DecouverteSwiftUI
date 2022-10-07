//
//  Live6_30septembre_DecouverteSwiftUIApp.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Lunack on 30/09/2022.
//

import SwiftUI

@main
struct Live6_30septembre_DecouverteSwiftUIApp: App {
    
    // StateObject
    //@StateObject private var viewModel = PersonnageViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            // environementObject
                .environmentObject(PersonnageViewModel())
                
        }
    }
}
