//
//  Player.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/5/25.
//
 
import Foundation

struct Player:Codable,Hashable
{
    
    let people : [People]
    
}

struct People:Codable,Hashable
{
    let id: Int
    let fullName: String
    let birthDate: String
    let currentAge: Int
    let birthCity, birthCountry, height: String
    let weight: Int
    let gender: String
}

let mockProfile = People(id: 24, fullName: "Elmer Arce", birthDate: "01/24/1995", currentAge: 30, birthCity: "Houston", birthCountry: "US", height: "5'11", weight: 180, gender: "Male")
