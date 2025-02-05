//
//  RosterRowView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//

import SwiftUI

struct RosterRowView: View
{
    let player: Rosters
    
    var body: some View
    {
        HStack(spacing: 0)
        {
            leftColumn
            centerColumn
            rightColumn
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

#Preview {
   
    RosterRowView(player: mockPlayer )
}

extension RosterRowView
{
    private var leftColumn: some View
    {
        HStack(spacing: 4)
        {
                Text(player.jerseyNumber)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 40, alignment: .leading)
         
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color(.systemGray4))
        }
        .frame(width: 120 ,alignment: .leading)
    }
    

    private var centerColumn: some View
    {
        VStack(alignment: .leading)
        {
            Text(player.person.fullName)
                .fontWeight(.semibold)
            
        }
        .frame(maxWidth: .infinity ,alignment: .leading)    
    }
    
    private var rightColumn: some View
    {
        
        VStack(alignment: .trailing)
        {
            Text("\(player.position.name)")
                .foregroundColor(.secondary)
                
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}
