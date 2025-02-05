//
//  HomeView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/4/25.
//

import SwiftUI

struct HomeView: View
{
    @StateObject private var vm = HomeViewModel()
    
    var body: some View
    {
        ScrollView
        {
            VStack(spacing: 0)
            {
                imageSection
                seasonTicketsSection
                gearSection //update photo to gear photo. maybe put a geometry reader?


            }
        }
        .ignoresSafeArea()
            
        
    }
}

#Preview {
    HomeView()
}
//https://www.mlb.com/astros/tickets/season-tickets  make a photo a link to take you to website

extension HomeView
{
    
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
                            Image(systemName: "chevron.right")
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
    
    private var gearSection: some View
    {
        VStack
        {
            if let url = URL(string: vm.seasonTicketsurl)
            {
                ZStack
                {
                    VStack(spacing: 0.0)
                    {
                        Link(destination: url) {
                            
                            Text("Buy your Gear Now!")
                            Image(systemName: "chevron.right")
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
}
