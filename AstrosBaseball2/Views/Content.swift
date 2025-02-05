//
//  TabView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/4/25.
//

import SwiftUI

struct Content: View
{
    
    var body: some View
    {
        TabView
        {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            RosterView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Team")
                }
            
            ScheduleView()
                .tabItem {
                    Image(systemName: "clipboard.fill")
                    Text("Schedule")
                }
            
        }
    }
}


#Preview {
    Content()
}
