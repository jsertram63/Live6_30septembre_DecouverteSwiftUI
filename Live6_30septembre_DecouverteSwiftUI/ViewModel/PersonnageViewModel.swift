//
//  PersonnageViewModel.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Lunack on 30/09/2022.
//

import Foundation
import SwiftUI


class PersonnageViewModel : ObservableObject {
    
    @Published var results : [Results] = [] // <----- tableau de personnage 
    //@Published var results : Results?
    @Published var responseData: Response?
    
    func fetch(){
        print("fetch")
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data else {
                return
            }
            do {
                // si récupération de données - décodage de notre JSON
                let persoFeed = try JSONDecoder().decode(Response.self, from: data)
                //print("json resultat : \(persoFeed)")
                DispatchQueue.main.async {
                    self?.responseData = persoFeed
                    self?.results = (self?.responseData?.results)!
                }
            }catch {
                print(error)
                
            }
        }
        task.resume()
    }
    
}





