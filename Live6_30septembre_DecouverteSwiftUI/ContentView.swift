//
//  ContentView.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Lunack on 30/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = PersonnageViewModel()
    @State var response: Response?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.results, id:\.self) { res in
                    Text(res.name)
                    
                }
            }
           
        }
        .navigationTitle("Ricky & Mortimeer")
        .onAppear {
            print("on Appear")
            viewModel.fetch()
            print(viewModel.results)
            
        }
    }
    
    
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
