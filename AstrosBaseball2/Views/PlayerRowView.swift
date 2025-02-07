//
//  playerScrollView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/5/25.
//

import SwiftUI

struct PlayerRowView: View
{
    let player: Rosters
    
    var body: some View
    {
        VStack(spacing: 6)
        {
            Image("lewis-hamilton")
                .resizable()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
               // .foregroundColor(Color(.systemGray4))
            Text(player.person.fullName)
        }
        .padding(.horizontal)
    }
}

#Preview {
    PlayerRowView(player: mockPlayer)
}
