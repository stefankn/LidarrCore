//
//  GetArtist.swift
//  
//
//  Created by Stefan Klein Nulent on 12/02/2021.
//

import Foundation

public struct GetArtist: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = Artist
    
    
    
    // MARK: - Properties
    
    public let id: Int
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/artist/\(id)" }
    
    
    
    // MARK: - Construction
    
    public init(id: Int) {
        self.id = id
    }
}
