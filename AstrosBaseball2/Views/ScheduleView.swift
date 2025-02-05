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
        NavigationStack {
            List {
                if let schedule = vm.schedule
                {
                                        ForEach(schedule.dates, id: \.date) { dateElement in
                                            Section(header: Text(dateElement.date))
                                            {
                                                ForEach(dateElement.games, id: \.gameDate) { game in
                                                    ExtractedView(game: game)
                                                }
                                            }
                                        }
                }
            }
            .navigationTitle("Season Schedule")
           // .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

#Preview {
    ScheduleView()
}

struct ExtractedView: View {
    let game: Game
    
    var body: some View {
        VStack(alignment: .leading)
        {

            Text("\(game.teams.home.team.name) vs \(game.teams.away.team.name)")
                .font(.headline)
            Text("Location: \(game.venue.name)")
                .font(.subheadline)
            Text("Time: \(game.gameDate)")
                .font(.caption)
                .foregroundColor(.gray)
            
        }
    }
}
