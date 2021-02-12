//
//  GetTracks.swift
//  
//
//  Created by Stefan Klein Nulent on 29/01/2021.
//

import Foundation

public struct GetTracks: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [Track]
    
    
    
    // MARK: - Properties
    
    let albumId: Int
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/track" }
    
    
    
    // MARK: - Construction
    
    public init(releaseId: Int) {
        self.albumId = releaseId
    }
}
