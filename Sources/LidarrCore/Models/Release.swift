//
//  Release.swift
//  
//
//  Created by Stefan Klein Nulent on 29/01/2021.
//

import Foundation

public struct Release: Decodable, Identifiable, Hashable {
    
    // MARK: - Types
    
    public enum ReleaseType: String, Decodable {
        case single = "Single"
        case album = "Album"
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case isMonitored = "monitored"
        case duration
        case type = "albumType"
        case releaseDate
        case media
        case images
        case genres
    }
    
    
    
    // MARK: - Properties
    
    public let id: Int
    public let title: String
    public let isMonitored: Bool
    public let duration: Int
    public let type: ReleaseType
    public let releaseDate: Date
    public let media: [Media]
    public let images: [Image]
    public let genres: [String]
    
    public var mediaDescription: String? {
        if let media = media.first {
            let description = "\(media.format) \(media.number)"
            
            if let name = media.name, !name.isEmpty {
                return "\(description) - \(name)"
            } else {
                return description
            }
        } else {
            return nil
        }
    }
    
    public var cover: Image? {
        images.first(where: { $0.coverType == "cover" })
    }

    
    
    // MARK: - Construction
    
    public init(id: Int, title: String, isMonitored: Bool, duration: Int, type: ReleaseType, releaseDate: Date, media: [Media] = [], images: [Image] = [], genres: [String] = []) {
        self.id = id
        self.title = title
        self.isMonitored = isMonitored
        self.duration = duration
        self.type = type
        self.releaseDate = releaseDate
        self.media = media
        self.images = images
        self.genres = genres
    }
}
