//
//  QualityProfile.swift
//  
//
//  Created by Stefan Klein Nulent on 06/02/2021.
//

import Foundation

public struct QualityProfile: Decodable {
    
    // MARK: - Properties
    
    public let id: Int
    public let name: String
    
    
    
    // MARK: - Construction
    
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
