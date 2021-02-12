//
//  GetQualityProfiles.swift
//  
//
//  Created by Stefan Klein Nulent on 06/02/2021.
//

import Foundation

public struct GetQualityProfiles: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [QualityProfile]
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/qualityprofile" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
