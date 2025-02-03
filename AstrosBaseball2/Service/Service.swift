//
//  Service.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//

import Foundation

class Service
{
    private let rosterUrl = "https://statsapi.mlb.com/api/v1/teams/117/roster?season=2025"
    
    func fetchRoster() async throws -> Roster
    {
        guard let url = URL(string: rosterUrl) else {
            throw APIError.requestFailed(description: "Invalid URL")
        }

        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else
        {
            throw APIError.requestFailed(description: "Request Failed")
        }
        guard httpResponse.statusCode == 200 else
        {
            throw APIError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        do
        {
            let roster = try JSONDecoder().decode(Roster.self, from: data)
            
            //print("DEBUG: data is \(roster)")
            return roster
            
        }
        
        catch
        {
            print("DEBUG: Error \(error)")
            throw error as? APIError ?? .unknownError(error: error)
        }
    }
}
