//
//  Artist.swift
//  
//
//  Created by Stefan Klein Nulent on 27/01/2021.
//

import Foundation

public struct Artist: Decodable, Identifiable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "artistName"
        case overview
        case genres
        case addedAt = "added"
        case images
        case isMonitored = "monitored"
    }
    
    
    
    // MARK: - Properties
    
    public let id: Int
    public let name: String
    public let overview: String
    public let genres: [String]
    public let addedAt: Date
    public let images: [Image]
    public let isMonitored: Bool
    
    public var poster: Image? {
        images.first(where: { $0.coverType == "poster" })
    }
    
    
    
    // MARK: - Construction
    
    public init(id: Int, name: String, overview: String, addedAt: Date, isMonitored: Bool, genres: [String] = [], images: [Image] = []) {
        self.id = id
        self.name = name
        self.overview = overview
        self.addedAt = addedAt
        self.genres = genres
        self.images = images
        self.isMonitored = isMonitored
    }
}
