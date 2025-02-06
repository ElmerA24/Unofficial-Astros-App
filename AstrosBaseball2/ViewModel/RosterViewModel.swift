//
//  RosterViewModel.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//

import Foundation

class RosterViewModel: ObservableObject
{
    @Published var roster: Roster?
    @Published var playerProfiles: [Int: People] = [:] // store each player's profile into this dictionary. [key:value],[playerID: playerinfo]
    @Published var errorMessage: String?
    
    private let service = Service()
    
    init()
    {
        Task { await fetchRoster()}
       
    }
    
    /*
     calls service.fetchRoster() to get players from API, then saves the roster in self.roster. Then it waits and calls fetchAllProfiles to get each player's profile
     */
    @MainActor
    func fetchRoster() async
    {
        do
        {
            let fetchedRoster = try await service.fetchRoster()
            self.roster = fetchedRoster
            
            //after loading the team, fetch each player's profile
            await fetchAllProfiles()
            
        }
        catch
        {
            guard let error = error as? APIError else {return}
            self.errorMessage = error.customDescription
    
        }
    }
    
    @MainActor
    func fetchAllProfiles() async
    {
        //check if we have a roster, otherwise stop
            guard let players = roster?.roster else { return }
        
        //loop through all players and fetch the player's profile and store it in playersProfile using the player's ID as the key
            for player in players
            {
                if let playerProfile = try? await service.fetchPlayerProfile(playerID: player.person.id) {
                    self.playerProfiles[player.person.id] = playerProfile
                }
            }
    }

}
