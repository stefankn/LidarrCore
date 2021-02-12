//
//  ArtistLookup.swift
//  
//
//  Created by Stefan Klein Nulent on 05/02/2021.
//

import Foundation

public struct ArtistLookup: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [LookupResult]
    
    
    
    // MARK: - Properties
    
    public let term: String
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/Artist/lookup" }
    
    
    
    // MARK: - Construction
    
    public init(query: String) {
        self.term = query
    }
}
