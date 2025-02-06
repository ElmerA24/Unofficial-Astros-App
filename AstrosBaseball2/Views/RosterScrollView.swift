//
//  TeamView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/5/25.
//

import SwiftUI

struct RosterScrollView: View
{
    
    @ObservedObject var viewModel = RosterViewModel()
    @ScaledMetric var trainCarSpace = 5
    var body: some View
    {
        NavigationStack
        {
            ScrollView(.horizontal)
            {
                HStack(spacing: trainCarSpace)
                {
                    if let roster = viewModel.roster
                    {
                        ForEach(roster.roster, id:\.person.id){ player in
                            NavigationLink(value: viewModel.playerProfiles[player.person.id]) {
                                PlayerRowView(player: player)
                            }
                            
                            
                        }
                        
                    }
                    
                }
                .foregroundColor(.orange)
                
                
            }
            .navigationDestination(for: People.self) { player in
                ProfileView(profile: player)
                
            }
            
            
        }
        
    }
}

#Preview {
    RosterScrollView()
}
