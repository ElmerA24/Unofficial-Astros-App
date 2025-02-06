//
//  ScheduleView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//

import SwiftUI

struct ScheduleView: View
{
    
    @StateObject var vm = ScheduleViewModel()
    var body: some View
    {
        NavigationStack
        {
            List
            {
                if let schedule = vm.schedule
                {
                    ForEach(schedule.dates, id: \.date) { dateElement in
                        Section(header: Text(dateElement.date).bold())
                        {
                            ForEach(dateElement.games, id: \.gameDate) { game in
                                ExtractedView(game: game)
                            }
                        }
                        
                        .listRowBackground(Color.theme.letters)
                    }
                }
            }
            .background(Color.theme.background)
            .scrollContentBackground(.hidden) // Hide default List background
            
            .navigationTitle("Season Schedule")
           // .navigationBarTitleDisplayMode(.inline)
        }.background(Color.theme.background)
        
       
    }
}

#Preview {
    ScheduleView()
}

struct ExtractedView: View
{
    let game: Game
    
    var body: some View
    {
        VStack(alignment: .leading)
        {

            Text("\(game.teams.away.team.name) @ \(game.teams.home.team.name)")
                .font(.title3)
            Text("Location: \(game.venue.name)")
                .font(.headline)
            Text("Time: \(game.gameDate)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
        }
        
        
    }
}
