//
//  ProfileView.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/5/25.
//

import SwiftUI

struct ProfileView: View
{
    let profile: People
    
    var body: some View
    {

        VStack
        {
            imageSection
            profileSection
        }
        .background(Color.theme.background)
            
            
        
        
    }
}

#Preview {

    ProfileView(profile: mockProfile)
}

extension ProfileView
{
    private var imageSection: some View
    {
        VStack
        {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 180,height: 180)
                .foregroundColor(Color(.systemGray4))
            Text(profile.fullName)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.theme.letters)
            
        }
        
        
    }
    
    private var profileSection: some View
    {
        List
        {
            Section("Player Profile")
            {
                
                Text("Full Name:  \(profile.fullName)")
                Text("Birth Date: \(profile.birthDate)")
                Text("Age: \(profile.currentAge)")
                Text("Birth City: \(profile.birthCity)")
                Text("Country: \(profile.birthCountry)")
                Text("Height: \(profile.height)")
                Text("Weight: \(profile.weight)")
                Text("Gender: \(profile.gender)")
            }
            .foregroundColor(Color.theme.letters)
           // .listRowBackground(Color(.systemGray6))
            
            
        }
        .scrollContentBackground(.hidden)
        .background(Color.theme.background)
      
        
    }
}
