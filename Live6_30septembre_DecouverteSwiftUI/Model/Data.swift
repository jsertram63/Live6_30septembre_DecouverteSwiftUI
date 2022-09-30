//
//  Data.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Lunack on 30/09/2022.
//

import Foundation

struct Response: Codable {
    let results: [Results]?
}


struct Results: Hashable,Codable, Identifiable {
  let id: Int
  let name: String
  let status: String
  let species: String
  let type: String
  let gender: String
  let image: String

}



