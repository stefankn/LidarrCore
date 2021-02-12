//
//  Server.swift
//  
//
//  Created by Stefan Klein Nulent on 27/01/2021.
//

import Foundation

public struct Server: Codable {
    
    // MARK: - Properties
    
    public let host: String
    public let apikey: String
    
    public var url: URL? {
        var host = self.host.replacingOccurrences(of: "http://", with: "")
        if host.last == "/" {
            host.removeLast()
        }
        
        return URL(string: "http://\(host)")
    }
    
    
    
    // MARK: - Construction
    
    public init(host: String, apikey: String) {
        self.host = host
        self.apikey = apikey
    }
}
