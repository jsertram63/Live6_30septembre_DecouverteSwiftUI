//
//  Color.swift
//  Live6_30septembre_DecouverteSwiftUI
//
//  Created by Dylan Caetano on 07/10/2022.
//

import Foundation
import SwiftUI

extension Color {
    static let background = Color("Background")
    static let text = Color("Text")
    static let gradient = LinearGradient(colors: [.background, .green],
                                         startPoint: .topLeading,
                                         endPoint: .bottomTrailing
    )
}
