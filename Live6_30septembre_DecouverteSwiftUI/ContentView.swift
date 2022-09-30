//
//  ContentView.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Lunack on 30/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = PersonnageViewModel()
    @State var results: [Results] = []
    
    var body: some View {
        NavigationView {
           
        }
        .navigationTitle("Ricky & Mortimeer")
        .onAppear {
            print(viewModel.fetch())
            
        }
    }
    
    
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
