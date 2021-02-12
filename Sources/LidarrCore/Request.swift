//
//  Request.swift
//  
//
//  Created by Stefan Klein Nulent on 27/01/2021.
//

import Foundation

public protocol Request: Encodable {
    
    // MARK: - Types
    
    associatedtype Response: Decodable
    
    
    
    // MARK: - Properties
    
    var endpoint: String { get }
    var httpMethod: HTTPMethod { get }
    var dateFormatter: ISO8601DateFormatter { get }
}

extension Request {
    
    // MARK: - Properties
    
    public var httpMethod: HTTPMethod { .get }
    
    public var dateFormatter: ISO8601DateFormatter {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        return formatter
    }
}
