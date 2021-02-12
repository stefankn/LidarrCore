//
//  Track.swift
//  
//
//  Created by Stefan Klein Nulent on 29/01/2021.
//

import Foundation

public struct Track: Decodable, Identifiable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case id
        case number = "trackNumber"
        case title
        case isDownloaded = "hasFile"
        case duration
    }
    
    
    
    // MARK: - Properties
    
    public let id: Int
    public let number: String
    public let title: String
    public let isDownloaded: Bool
    public let duration: Int
    
    public var durationDisplay: String {
        let minutes = (duration / 1000) / 60
        let seconds = (duration / 1000) % 60
        
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    
    
    // MARK: - Construction
    
    public init(id: Int, number: String, title: String, isDownloaded: Bool, duration: Int) {
        self.id = id
        self.number = number
        self.title = title
        self.isDownloaded = isDownloaded
        self.duration = duration
    }
}
