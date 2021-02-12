//
//  AlbumSearch.swift
//  
//
//  Created by Stefan Klein Nulent on 04/02/2021.
//

import Foundation

public struct AlbumSearch: SendCommand {
    
    // MARK: - Properties
    
    public let albumIds: [Int]
    
    
    // MARK: Command Properties
    
    public var name: CommandName = .albumSearch
    
    
    
    // MARK: - Construction
    
    public init(albumIds: [Int]) {
        self.albumIds = albumIds
    }
    
    public init(albumId: Int) {
        self.albumIds = [albumId]
    }
}
