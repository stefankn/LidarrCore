//
//  Command.swift
//  
//
//  Created by Stefan Klein Nulent on 04/02/2021.
//

import Foundation

public protocol SendCommand: Request where Response == Command {
    
    // MARK: - Properties
    
    var name: CommandName { get }
}

extension SendCommand {
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/command" }
    public var httpMethod: HTTPMethod { .post }
}
