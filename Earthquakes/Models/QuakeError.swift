//
//  QuakeError.swift
//  Earthquakes-iOS
//
//  Created by Ryan Henderson on 11/18/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

enum QuakeError: Error {
    case missingData
    case networkError
    case unexpectedError
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .networkError:
            return NSLocalizedString("Network Error", comment: "Network error description")
        case .missingData:
            return NSLocalizedString("Found and will discard quake missing data", comment: "Missing data error description")
        case .unexpectedError:
            return NSLocalizedString("Unexpected Error", comment: "unexpected error description")
        }
        
    }
}
