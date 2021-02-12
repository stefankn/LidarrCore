//
//  RefreshArtist.swift
//  
//
//  Created by Stefan Klein Nulent on 04/02/2021.
//

import Foundation

public struct RefreshArtist: SendCommand {
    
    // MARK: - Properties
    
    public let artistId: Int?
    
    
    // MARK: Command Properties
    
    public var name: CommandName = .refreshArtist
    
    
    
    // MARK: - Construction
    
    public init(artistId: Int? = nil) {
        self.artistId = artistId
    }
}
