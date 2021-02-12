//
//  GetArtists.swift
//  
//
//  Created by Stefan Klein Nulent on 27/01/2021.
//

import Foundation

public struct GetArtists: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [Artist]
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/artist" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
