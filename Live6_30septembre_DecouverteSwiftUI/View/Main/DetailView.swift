//
//  DetailView.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Dylan Caetano on 07/10/2022.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var personnageVm: PersonnageViewModel
    var results: Results
    
    var body: some View {
        ZStack {
            Color.brown.opacity(0.5)
                .ignoresSafeArea()
            ZStack {
                VStack {
                    Divider()
                        .background(Color.green.opacity(0.25))
                    ScrollView{
                        
                        VStack {
                            AsyncImage(url:URL(string: results.image)) { img in
                                img.resizable()
                                //.aspectRatio(contentMode: .fit)
                                    .clipped()
                                    .frame(width: 250, height: 250)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(.gray.opacity(0.5),lineWidth: 5))
                                    .shadow( radius: 5)
                                
                            }
                        placeholder: {
                            
                            ProgressView()
                        }
                            VStack(spacing: 25) {
                                Text(results.name)
                                    .font(.title)
                                    .padding(.top)
                            }
                            
                        }.padding()
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(results: PersonnageViewModel().results[0])
            .environmentObject(PersonnageViewModel())
    }
}


