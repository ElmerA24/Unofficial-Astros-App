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
    var body: some View
    {
        NavigationStack
        {
            ScrollView(.horizontal)
            {
                HStack
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
                //.background(Color.theme.background)
                .foregroundColor(Color.theme.letters)
                
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
