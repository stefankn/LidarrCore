//
//  GetRootFolders.swift
//  
//
//  Created by Stefan Klein Nulent on 06/02/2021.
//

import Foundation

public struct GetRootFolders: Request {

    // MARK: - Types
    
    // MARK: Request Types
    
    public typealias Response = [RootFolder]
    
    
    
    // MARK: - Properties
    
    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/rootfolder" }
    
    
    
    // MARK: - Construction
    
    public init() {}
}
