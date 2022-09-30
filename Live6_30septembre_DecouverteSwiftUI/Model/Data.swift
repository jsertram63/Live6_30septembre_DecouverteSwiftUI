//
//  Data.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Lunack on 30/09/2022.
//

import Foundation


struct Results: Codable, Identifiable {
  let id: Int
  let name: String
  let status: String
  let species: String
  let type: String
  let gender: String
  let origin: Origin
  let location: Location
  let image: String
  let episode: [URL]
  let url: URL
  let created: Date
}

struct Origin: Codable {
  let name: String
  let url: URL
}

struct Location: Codable {
  let name: String
  let url: URL
}
