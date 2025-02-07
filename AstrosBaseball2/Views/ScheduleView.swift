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
                        Section
                        {
                            ForEach(dateElement.games, id: \.gameDate) { game in
//                                gameRowView(game: game)
                                ScheduleRowView(game: game)
                                
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

