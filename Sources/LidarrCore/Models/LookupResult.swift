//
//  LookupResult.swift
//  
//
//  Created by Stefan Klein Nulent on 05/02/2021.
//

import Foundation

public struct LookupResult: Decodable, Identifiable {
    
    // MARK: - Properties
    
    public let id: Int?
    public let foreignArtistId: String
    public let artistName: String
    public let overview: String
    public let images: [Image]
    
    public var isAdded: Bool {
        id != nil
    }
    
    public var poster: Image? {
        images.first(where: { $0.coverType == "poster" })
    }
    
    
    // MARK: - Construction
    
    public init(id: Int? = nil, foreignArtistId: String, artistName: String, overview: String, images: [Image] = []) {
        self.id = id
        self.foreignArtistId = foreignArtistId
        self.artistName = artistName
        self.overview = overview
        self.images = images
    }
}
