//
//  RootFolder.swift
//  
//
//  Created by Stefan Klein Nulent on 06/02/2021.
//

import Foundation

public struct RootFolder: Decodable, Hashable, Identifiable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case id
        case path
        case freeSpace
        case totalSpace
        case isAccessible = "accessible"
    }
    
    
    
    // MARK: - Properties
    
    public let id: Int
    public let path: String
    public let freeSpace: Int
    public let totalSpace: Int
    public let isAccessible: Bool
    
    
    
    // MARK: - Construction
    
    public init(id: Int, path: String, freeSpace: Int, totalSpace: Int, isAccessible: Bool) {
        self.id = id
        self.path = path
        self.freeSpace = freeSpace
        self.totalSpace = totalSpace
        self.isAccessible = isAccessible
    }
}
