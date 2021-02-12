//
//  GetCommands.swift
//  
//
//  Created by Stefan Klein Nulent on 07/02/2021.
//

import Foundation

public struct GetCommands: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [Command]
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/command" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
