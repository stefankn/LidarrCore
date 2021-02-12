//
//  MonitorMethod.swift
//  
//
//  Created by Stefan Klein Nulent on 06/02/2021.
//

import Foundation

public enum MonitorMethod: String, Encodable, CaseIterable {
    case all = "all"
    case future = "future"
    case missing = "missing"
    case existing = "existing"
    case first = "first"
    case latest = "latest"
    case none = "none"
}
