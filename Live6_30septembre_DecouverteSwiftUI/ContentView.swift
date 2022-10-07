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
    
    

    init() {
    UINavigationBar.appearance().largeTitleTextAttributes = [
    .foregroundColor: UIColor.brown,
    .font : UIFont(name:"Noteworthy", size: 40)!
    ]
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.results, id:\.id) { res in
                    NavigationLink {
                        // detailView
                        DetailView(results: res)
                    } label: {
                        // container horizontal pour empiler des éléments
                        HStack(alignment: .center) {
                            
                            AsyncImage(url:URL(string: res.image)) { img in
                                img.resizable()
                        
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(.gray.opacity(0.5),lineWidth: 5))
                                    .shadow( radius: 5)
                                   
                                VStack(alignment: .leading, spacing: 5) {
                                    Text(res.name)
                                        .font(.title3)
                                    Text("lieu : \(res.location.name)")
                                        .font(.subheadline)
                                       
                                    
                                    
                                }
                                
                            } placeholder: {
                                ProgressView()
                            }
                            .padding()
                        }
                        .padding(.vertical, 5.0)
                    }
                    

                    
                }
                
            }.listStyle(.sidebar)
                .navigationTitle("Ricky & Mortimeer")
            //   .navigationBarTitleDisplayMode(.inline)
           
        }
      
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
