//
//  GetReleases.swift
//  
//
//  Created by Stefan Klein Nulent on 29/01/2021.
//

import Foundation

public struct GetReleases: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [Release]
    
    
    // MARK: - Properties
    
    let artistId: Int
    
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/album" }
    
    public var dateFormatter: ISO8601DateFormatter {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = .withInternetDateTime
        
        return formatter
    }
    
    
    
    // MARK: - Construction
    
    public init(artistId: Int) {
        self.artistId = artistId
    }
}
