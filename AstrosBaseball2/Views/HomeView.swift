//
//  HomeView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/4/25.
//

import SwiftUI

struct HomeView: View
{
    @StateObject var vm = HomeViewModel()
    
   
    
    var body: some View
    {
        NavigationStack
        {
            ScrollView
            {
                VStack(spacing: 0)
                {
                    imageSection
                    rosterSection
                    seasonTicketsSection
                    gearSection //update photo to gear photo. maybe put a geometry reader?
                    
                    
                }
                .background(Color.theme.background)
            }
           .ignoresSafeArea(edges: .top)
            }
        }
    
    }

#Preview {
    HomeView()
}
extension HomeView
{
    //MARK: - Image Section
    private var imageSection: some View
    {
        TabView
            {
                Image("astros-relentless")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
                    
                
                Image("season-tickets")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    
            }
            .ignoresSafeArea()
            .frame(height: 500)
            .tabViewStyle(PageTabViewStyle())
    }
    
    //MARK: - Season Tickets Section
    private var seasonTicketsSection: some View
    {
        VStack(spacing: 0)
        {
            if let url = URL(string: vm.seasonTicketsurl)
            {
                ZStack
                {
                    VStack(spacing: 0.0)
                    {
                        Link(destination: url) {
                            
                            Text("Buy Tickets Now!")
                            Image(systemName: "ticket.fill")
                            Spacer()
                        }
                        .padding(.horizontal,3)
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                        .background(.orange)
                        .foregroundColor(.white)
                        
                        Image("season-tickets 1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: UIScreen.main.bounds.width)
                    }
                }
                
            
            }
        }
    }
    
    //MARK: - Gear Section
    private var gearSection: some View
    {
        VStack
        {
            if let url = URL(string: vm.astrosGearurl)
            {
                ZStack
                {
                    VStack(spacing: 0.0)
                    {
                        Link(destination: url) {
                            
                            Text("Buy your Gear Now!")
                            Image(systemName: "tshirt.fill")
                            Spacer()
                        }
                        .padding(.horizontal,3)
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                        .background(.orange)
                        .foregroundColor(.white)
                        
                        Image("gear")
                                .resizable()
                                .scaledToFit()
                                //.frame(width: UIScreen.main.bounds.width)
                    }
                    
                }
                
                
            
            }
        }
    }
    
    //MARK: - Roster Section
    private var rosterSection: some View
    {
        VStack
        {
            HStack
            {
                Text("Meet Your 2025 Houston Astros!")
                Spacer()
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .padding(.horizontal,3)
            .font(.title2)
            .fontWeight(.bold)
            .background(.orange)
            .foregroundColor(.white)
            
            
            RosterScrollView()
        }
    }
}
