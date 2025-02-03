//
//  APIError.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//

import Foundation

enum APIError:Error
{
    case invalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unknownError(error: Error)
    
    
    
    var customDescription: String
    {
        switch self
        {
        case .invalidData: return "invalid date"
        case .jsonParsingFailure: return "Failed to parse JSON"
        case let .requestFailed(description): return "Request Failed: \(description)"
        case let .invalidStatusCode(statusCode): return "Invalid status code: \(statusCode)"
        case let .unknownError(error): return " An unknown error occured \(error.localizedDescription)"
            
        }
    }
}
