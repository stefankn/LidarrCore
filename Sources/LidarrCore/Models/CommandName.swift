//
//  CommandName.swift
//  
//
//  Created by Stefan Klein Nulent on 04/02/2021.
//

import Foundation

public enum CommandName: String, Codable {
    case rssSync = "RssSync"
    case refreshArtist = "RefreshArtist"
    case artistSearch = "ArtistSearch"
    case albumSearch = "AlbumSearch"
    case refreshMonitoredDownloads = "RefreshMonitoredDownloads"
    case processMonitoredDownloads = "ProcessMonitoredDownloads"
    case messagingCleanup = "MessagingCleanup"
    case rescanFolders = "RescanFolders"
    case missingAlbumSearch = "MissingAlbumSearch"
    case moveArtist = "MoveArtist"
    case applicationUpdateCheck = "ApplicationUpdateCheck"
}
