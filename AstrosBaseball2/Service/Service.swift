//
//  Service.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//https://statsapi.mlb.com/api/v1/teams/117/team_stats?season=2024

import Foundation

class Service
{
    private let rosterUrl = "https://statsapi.mlb.com/api/v1/teams/117/roster?season=2025"
    private let scheduleUrl = "https://statsapi.mlb.com/api/v1/schedule?sportId=1&season=2025&gameType=R&teamId=117"
    
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
    
    func fetchSchedule() async throws -> Schedule
    {
        guard let url = URL(string: scheduleUrl) else
        {
            throw APIError.requestFailed(description: "Invalid URL")
        }
        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else
        {
            throw APIError.requestFailed(description: "Request Failed")
        }
        
//        guard httpResponse.statusCode == 200 else
//        {
//            throw APIError.invalidStatusCode(statusCode: httpResponse.statusCode)
//        }
        
        do
        {
            let schedule = try JSONDecoder().decode(Schedule.self, from: data)
           // print("DEBUG: schedule is \(schedule)")
            return schedule
        }
        catch
        {
            print("DEBUG: Error \(error)")
            throw error as? APIError ?? .unknownError(error: error)
        }
    }
    
}
