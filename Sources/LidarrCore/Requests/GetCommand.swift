//
//  GetCommand.swift
//  
//
//  Created by Stefan Klein Nulent on 07/02/2021.
//

import Foundation

public struct GetCommand: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = Command
    
    
    
    // MARK: - Properties
    
    public let id: Int
    
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/command/\(id)" }
    
    
    
    // MARK: - Construction
    
    public init(id: Int) {
        self.id = id
    }
}
