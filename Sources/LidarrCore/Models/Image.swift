//
//  Image.swift
//  
//
//  Created by Stefan Klein Nulent on 27/01/2021.
//

import Foundation

public struct Image: Decodable, Hashable {
    
    // MARK: - Properties
    
    public let url: String
    public let coverType: String
    
    
    
    // MARK: - Construction
    
    public init(url: String, coverType: String) {
        self.url = url
        self.coverType = coverType
    }
}
