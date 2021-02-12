//
//  ArtistSearch.swift
//  
//
//  Created by Stefan Klein Nulent on 04/02/2021.
//

import Foundation

public struct ArtistSearch: SendCommand {
    
    // MARK: - Properties
    
    public let artistId: Int
    
    
    // MARK: Command Properties
    
    public var name: CommandName = .artistSearch
    
    
    
    // MARK: - Construction
    
    public init(artistId: Int) {
        self.artistId = artistId
    }
}
