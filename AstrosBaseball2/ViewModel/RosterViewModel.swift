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
    @Published var errorMessage: String?
    
    private let service = Service()
    
    init()
    {
        Task { await fetchRoster()}
    }
    
    @MainActor
    func fetchRoster() async
    {
        do {
            let fetchedRoster = try await service.fetchRoster()
            self.roster = fetchedRoster
            
        }catch
        {
            guard let error = error as? APIError else {return}
            self.errorMessage = error.customDescription
            
            
        }
    }
}
