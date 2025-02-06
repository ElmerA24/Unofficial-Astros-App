//
//  TabView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/4/25.
//

import SwiftUI

struct Content: View
{
    init()
    {
        UITabBar.appearance().backgroundColor = UIColor(named: "Background")
    }
    var body: some View
    {
        TabView
        {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .background(Color.theme.letters)
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
        .tint(.blue)
        .onAppear {
            UITabBar.appearance().unselectedItemTintColor = UIColor(named: "Letter")
        }

       
        
    }
}


#Preview {
    Content()
}
