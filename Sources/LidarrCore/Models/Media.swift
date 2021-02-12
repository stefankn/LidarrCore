//
//  Media.swift
//  
//
//  Created by Stefan Klein Nulent on 30/01/2021.
//

import Foundation

public struct Media: Decodable, Hashable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case number = "mediumNumber"
        case name = "mediumName"
        case format = "mediumFormat"
    }
    
    
    
    // MARK: - Properties
    
    public let number: Int
    public let name: String?
    public let format: String
    
    
    
    // MARK: - Construction
    
    public init(number: Int, format: String, name: String? = nil) {
        self.number = number
        self.name = name
        self.format = format
    }
}
