//
//  RosterModel.swift
//  Astros Baseball
//
//  Created by Elmer Arce on 1/13/25.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rosterModel = try? JSONDecoder().decode(RosterModel.self, from: jsonData)

import Foundation



struct Roster: Codable {
    let roster: [Rosters]
    let teamID: Int
    let rosterType: String //active

    enum CodingKeys: String, CodingKey {
        case roster
        case teamID = "teamId"
        case rosterType
    }
}
// MARK: - Roster
struct Rosters: Codable {
    let person: Person
    let jerseyNumber: String
    let position: Position
    let status: Status
    let parentTeamID: Int

    enum CodingKeys: String, CodingKey {
        case person, jerseyNumber, position, status
        case parentTeamID = "parentTeamId"
    }
}

// MARK: - Person
struct Person: Codable,Hashable {
    let id: Int
    let fullName, link: String
}

// MARK: - Position
struct Position: Codable {
    let code, name: String
    let type: TypeEnum
    let abbreviation: String
}

enum TypeEnum: String, Codable {
    case catcher = "Catcher"
    case infielder = "Infielder"
    case outfielder = "Outfielder"
    case pitcher = "Pitcher"
}

// MARK: - Status
struct Status: Codable {
    let code: Code
    let description: Description
}

enum Code: String, Codable {
    case a = "A"
}

enum Description: String, Codable {
    case active = "Active"
}

let mockPlayer = Rosters(person: Person(id: 24, fullName: "Elmer Arce", link: "/api/v1/people/656986"),
                         jerseyNumber: "24",
                         position: Position(code: "A", name: "Pitcher", type: TypeEnum.catcher, abbreviation: "C"),
                         status: Status(code: Code.a, description: Description.active),
                         parentTeamID: 117)


//https://app.quicktype.io
//https://statsapi.mlb.com/api/v1/teams/117/roster?season=2025


// MARK: - RosterModel
//struct Roster: Codable {
//    let copyright: String
//    let roster: [Rosters]
//    let link: String
//    let teamID: Int
//    let rosterType: String
//
//    enum CodingKeys: String, CodingKey {
//        case copyright, roster, link
//        case teamID = "teamId"
//        case rosterType
//    }
//}
//
//// MARK: - Roster
//struct Rosters: Codable {
//    let person: Person
//    let jerseyNumber: String
//    let position: Position
//    let status: Status
//    let parentTeamID: Int
//
//    enum CodingKeys: String, CodingKey {
//        case person, jerseyNumber, position, status
//        case parentTeamID = "parentTeamId"
//    }
//}
//
//// MARK: - Person
//struct Person: Codable {
//    let id: Int
//    let fullName, link: String
//}
//
//// MARK: - Position
//struct Position: Codable {
//    let code, name: String
//    let type: TypeEnum
//    let abbreviation: String
//}
//
//enum TypeEnum: String, Codable {
//    case catcher = "Catcher"
//    case infielder = "Infielder"
//    case outfielder = "Outfielder"
//    case pitcher = "Pitcher"
//}
//
//// MARK: - Status
//struct Status: Codable {
//    let code: Code
//    let description: Description
//}
//
//enum Code: String, Codable {
//    case a = "A"
//}
//
//enum Description: String, Codable {
//    case active = "Active"
//}
