//
//  Command.swift
//  
//
//  Created by Stefan Klein Nulent on 04/02/2021.
//

import Foundation

public struct Command: Decodable, Hashable {
    
    // MARK: - Types
    
    public enum Status: String, Decodable {
        case queued = "queued"
        case pending = "pending"
        case started = "started"
        case completed = "completed"
    }
    
    public enum Trigger: String, Decodable {
        case manual = "manual"
        case unspecified = "unspecified"
        case scheduled = "scheduled"
    }
    
    public struct Body: Decodable, Hashable {
        public let artistId: Int?
        public let isNewArtist: Bool?
    }
    
    
    
    // MARK: - Properties
    
    public let id: Int
    public let name: CommandName
    public let message: String?
    public let status: Status
    public let trigger: Trigger
    public let body: Body
}
