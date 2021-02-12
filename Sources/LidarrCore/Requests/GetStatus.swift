//
//  GetStatus.swift
//  
//
//  Created by Stefan Klein Nulent on 27/01/2021.
//

import Foundation

public struct GetStatus: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = Status
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/system/status" }
}
