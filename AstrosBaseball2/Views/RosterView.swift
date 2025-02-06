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
        NavigationStack
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
                            .listRowBackground(Color.clear)
                            
                        
                       
                    }
                    .listStyle(.plain)

                }
                
                Spacer(minLength: 0)
            }//end of VStack
            
            .padding(.horizontal)
            .navigationTitle("Roster")
            .background(Color.theme.background)
          
            
        }
       
        
    }
}

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
