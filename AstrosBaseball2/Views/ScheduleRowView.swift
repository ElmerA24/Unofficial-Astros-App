//
//  scheduleRowView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/6/25.
//

import SwiftUI

struct ScheduleRowView: View
{
    let game: Game
    var body: some View
    {
        VStack(alignment: .leading)
        {
            Text("\(game.teams.away.team.name) @ \(game.teams.home.team.name)")
                .font(.title2)
                .fontWeight(.bold)
            Text("Location: \(game.venue.name)")
                .font(.title3)
                .fontWeight(.semibold)
            Text("\(timeFormat(date: game.gameDate) ?? "nil")")
                .font(.subheadline)
               // .foregroundColor(.secondary)
        }
    }
}

#Preview {
    ScheduleRowView(game: mockSchedule)
}
