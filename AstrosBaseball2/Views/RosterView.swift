//
//  ContentView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//

import SwiftUI

struct RosterView: View
{
    
    @StateObject var vm = RosterViewModel()
    
    var body: some View
    {
        VStack
        {
            columnTitles
                .foregroundColor(.secondary)
            if let roster = vm.roster
            {
                List(roster.roster, id: \.person.id) { player in

                    RosterRowView(player: player)
                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    
                   
                }
                
                .listStyle(.plain)
            }
            Spacer(minLength: 0)
        }
        .padding(.horizontal)
        
        
    }
}

//"person": {
//        "id": 656986,
//        "fullName": "Bennett Sousa",
//        "link": "/api/v1/people/656986"
//      },
//      "jerseyNumber": "62",
//      "position": {
//        "code": "1",
//        "name": "Pitcher",
//        "type": "Pitcher",
//        "abbreviation": "P"
//      },
//      "status": {
//        "code": "A",
//        "description": "Active"
//      },
//      "parentTeamId": 117


#Preview {
    RosterView()
}

extension RosterView
{
    private var columnTitles: some View
    {
        HStack
        {
            Text("#")
                .frame(width: 120 ,alignment: .leading)
               
            Text("Player")
                .frame(maxWidth: .infinity ,alignment: .leading)
            Text("Position")
                .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
             
            
        }
        
        .font(.caption)
        .padding(.horizontal)
    }
}
