//
//  CellView.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Dylan Caetano on 07/10/2022.
//

import SwiftUI

struct CellView: View {
    
    @EnvironmentObject var personnageVM: PersonnageViewModel
    let viewModel: Results
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: viewModel.image)) { img in
                img
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 150)
                    .clipped()
                    .cornerRadius(8)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(viewModel.name)
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                }
                Text(viewModel.location.name)
                    .font(.footnote)
                    .fontWeight(.light)
            }
        }
        .onAppear {
            personnageVM.fetch()
        }
        .padding(8)
    }
}

/*struct CellView_Previews: PreviewProvider {
 
 
     static let viewModel = CellViewModel(
         image:"Rick",
         name: "Rick",
         lieu: "Citadel"
 )
 
 static var previews: some View {
 CellView(viewModel: PersonnageViewModel().results[0])
 .environmentObject(PersonnageViewModel())
 }
 }
 */
