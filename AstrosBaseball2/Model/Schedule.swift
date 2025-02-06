//
//  Schedule.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//



import Foundation

// MARK: - Schedule
struct Schedule:Codable {
    let totalGames: Int //?
    let dates: [DateElement] //?
}

// MARK: - DateElement
struct DateElement:Codable {
    let date: String //?
    let games: [Game] //?
}

// MARK: - Game
struct Game:Codable {
    let season: String
    let gameDate: String //?
    let officialDate: String
    let teams: Teams //?
    let venue: Venue //?
}

struct Teams: Codable {
    let away: TeamInfo
    let home: TeamInfo
}

// MARK: - TeamInfo
struct TeamInfo: Codable {
    let team: Team
}

// MARK: - Team
struct Team: Codable {
    let id: Int
    let name: String
}

// MARK: - Venue
struct Venue: Codable {
    let id: Int
    let name: String
}

let mockSchedule = Schedule(totalGames: 162,
                            dates: [DateElement(date: "03-27-2025",
                                                games: [Game(season: "2025", gameDate: "27-03-2025", officialDate: "03-28-2025", teams: Teams(away: TeamInfo(team: Team(id: 121, name: "New York Mets")), home: TeamInfo(team: Team(id: 117, name: "Houston Astros"))),
                                                             venue: Venue(id: 2392, name: "Daikin Park"))])])

//JSON
/*
 "totalItems": 162,
  "totalEvents": 0,
  "totalGames": 162,
  "totalGamesInProgress": 0,
  "dates": [
    {
      "date": "2025-03-27",
      "totalItems": 1,
      "totalEvents": 0,
      "totalGames": 1,
      "totalGamesInProgress": 0,
      "games": [
        {
          "gamePk": 778559,
          "gameGuid": "970b084e-bd00-480e-b71b-760af2428505",
          "link": "/api/v1.1/game/778559/feed/live",
          "gameType": "R",
          "season": "2025",
          "gameDate": "2025-03-27T20:10:00Z",
          "officialDate": "2025-03-27",
          "status": {
            "abstractGameState": "Preview",
            "codedGameState": "S",
            "detailedState": "Scheduled",
            "statusCode": "S",
            "startTimeTBD": false,
            "abstractGameCode": "P"
          },
          "teams": {
            "away": {
              "leagueRecord": {
                "wins": 0,
                "losses": 0,
                "pct": ".000"
              },
              "team": {
                "id": 121,
                "name": "New York Mets",
                "link": "/api/v1/teams/121"
              },
              "splitSquad": false,
              "seriesNumber": 1
            },
            "home": {
              "leagueRecord": {
                "wins": 0,
                "losses": 0,
                "pct": ".000"
              },
              "team": {
                "id": 117,
                "name": "Houston Astros",
                "link": "/api/v1/teams/117"
              },
              "splitSquad": false,
              "seriesNumber": 1
            }
          },
          "venue": {
            "id": 2392,
            "name": "Daikin Park",
            "link": "/api/v1/venues/2392"
          },
          "content": {
            "link": "/api/v1/game/778559/content"
          },
          "gameNumber": 1,
          "publicFacing": true,
          "doubleHeader": "N",
          "gamedayType": "P",
          "tiebreaker": "N",
          "calendarEventID": "14-778559-2025-03-27",
          "seasonDisplay": "2025",
          "dayNight": "day",
          "description": "Astros home opener",
          "scheduledInnings": 9,
          "reverseHomeAwayStatus": false,
          "inningBreakLength": 120,
          "gamesInSeries": 3,
          "seriesGameNumber": 1,
          "seriesDescription": "Regular Season",
          "recordSource": "S",
          "ifNecessary": "N",
          "ifNecessaryDescription": "Normal Game"
        }
      ],
      "events": []
    },
 */
