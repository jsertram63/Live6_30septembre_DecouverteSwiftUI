//
//  ListView.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Lunack on 30/09/2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var viewModel: PersonnageViewModel
    
    //    init() {
    //    UINavigationBar.appearance().largeTitleTextAttributes = [
    //    .foregroundColor: UIColor.brown,
    //    .font : UIFont(name:"Noteworthy", size: 40)!
    //    ]
    //    }
    
    var body: some View {
        ZStack(alignment: .top) {
            NavigationView {
                ScrollView {
                    ForEach(viewModel.results, id:\.id) { res in
                        NavigationLink(
                            // detailView
                            destination:  DetailView(results: res),
                            label: {
                                CellView(viewModel: res)
                            }
                        )
                    }
                }
                .navigationTitle("Rick & Morty")
                .foregroundColor(Color.text)
                .background(Color.gradient.opacity(0.28).ignoresSafeArea())
            }
            .onAppear {
                print("on Appear")
                viewModel.fetch()
                print(viewModel.results)
                
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(PersonnageViewModel())
    }
}

