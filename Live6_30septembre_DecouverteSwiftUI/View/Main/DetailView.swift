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
            Color.gradient.opacity(0.28).ignoresSafeArea()
            
            ScrollView {
                VStack {
                    AsyncImage(url:URL(string: results.image)) { img in
                        img
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 250, height: 300)
                            .cornerRadius(8)
                            .clipped()
                            .shadow(radius: 3)
                    } placeholder: {
                        ProgressView()
                    }
                }
                VStack {
                    Text(results.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(results.gender)
                        .font(.title3)
                        .fontWeight(.medium)
                }
                .padding(.top, 16)
            }
        }
    }
}
//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(results: PersonnageViewModel().results[0])
//            .environmentObject(PersonnageViewModel())
//    }
//}


