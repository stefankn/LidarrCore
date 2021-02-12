//
//  GetMetadataProfiles.swift
//  
//
//  Created by Stefan Klein Nulent on 06/02/2021.
//

import Foundation

public struct GetMetadataProfiles: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [MetadataProfile]
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/metadataprofile" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
