//
//  URLResponse+Utilities.swift
//  
//
//  Created by Stefan Klein Nulent on 18/02/2021.
//

import Foundation

extension URLResponse {
    
    // MARK: - Properties
    
    var isSuccess: Bool {
        if let statusCode = httpStatusCode {
            return 200...300 ~= statusCode
        } else {
            return false
        }
    }
    
    var httpStatusCode: Int? {
        (self as? HTTPURLResponse)?.statusCode
    }
}
