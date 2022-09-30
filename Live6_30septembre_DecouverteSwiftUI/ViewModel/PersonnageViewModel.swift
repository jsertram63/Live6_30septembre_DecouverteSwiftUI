//
//  PersonnageViewModel.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Lunack on 30/09/2022.
//

import Foundation
import SwiftUI


class PersonnageViewModel : ObservableObject {
    
    //@Published var results : [Results] = []
    @Published var results = [Results]()
    
    func fetch() {
    
        guard let url = URL(string:"https://rickandmortyapi.com/api/character/") else {
            return
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
        if let data = data {
            print(data)
        if let response = try? JSONDecoder().decode([Results].self, from: data) {
    
        DispatchQueue.main.async {
        self.results = response
            print(self.results)
            
        }
        return
        }
        }
        }.resume()
    }
    
}





