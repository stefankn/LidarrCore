//
//  AddArtist.swift
//  
//
//  Created by Stefan Klein Nulent on 06/02/2021.
//

import Foundation

public struct AddArtist: Request {

    // MARK: - Types

    public struct Options: Encodable {
        public let monitor: MonitorMethod
        public let searchForMissingAlbums: Bool
        
        public init(monitorMethod: MonitorMethod, searchForMissingAlbums: Bool) {
            self.monitor = monitorMethod
            self.searchForMissingAlbums = searchForMissingAlbums
        }
    }
    
    
    // MARK: Request Types
    
    public typealias Response = Artist
    
    
    
    // MARK: - Properties
    
    public let foreignArtistId: String
    public let artistName: String
    public let monitored: Bool
    public let qualityProfileId: Int
    public let metadataProfileId: Int
    public let rootFolderPath: String
    public let addOptions: Options
    

    // MARK: Request Properties
    
    public var endpoint: String { "/api/v1/artist" }
    public var httpMethod: HTTPMethod { .post }
    
    
    
    // MARK: - Construction
    
    public init(id: String, artistName: String, isMonitored: Bool, qualityProfileId: Int, metadataProfileId: Int, rootFolderPath: String, options: Options) {
        self.foreignArtistId = id
        self.artistName = artistName
        self.monitored = isMonitored
        self.qualityProfileId = qualityProfileId
        self.metadataProfileId = metadataProfileId
        self.rootFolderPath = rootFolderPath
        self.addOptions = options
    }
}
