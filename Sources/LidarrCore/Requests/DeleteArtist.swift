//
//  DeleteArtist.swift
//  
//
//  Created by Stefan Klein Nulent on 05/02/2021.
//

import Foundation

public struct DeleteArtist: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [String: String]
    
    
    
    // MARK: - Properties
    
    public let id: Int
    public let deleteFiles: Bool
    
    
    // MARK: Request Properties

    public var endpoint: String { "/api/v1/artist/\(id)" }
    public var httpMethod: HTTPMethod { .delete }
    
    
    
    // MARK: - Construction
    
    public init(id: Int, deleteFiles: Bool = false) {
        self.id = id
        self.deleteFiles = deleteFiles
    }
}
