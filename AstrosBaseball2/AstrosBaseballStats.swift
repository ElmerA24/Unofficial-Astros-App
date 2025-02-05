//
//  AstrosBaseball2App.swift
//  AstrosBaseball2
//
//  Created by Elmer Arce on 2/3/25.
//

import SwiftUI

@main
struct AstrosBaseballStats: App {
    var body: some Scene {
        WindowGroup {
            Content()
        }
    }
}

//hitting,pitching,fielding stats

/*
 
 https://statsapi.mlb.com/api/v1/teams/117/stats?season=2024&group=hitting,pitching,fielding&stats=season

 {
   "copyright": "Copyright 2025 MLB Advanced Media, L.P.  Use of any content on this page acknowledges agreement to the terms posted here http://gdx.mlb.com/components/copyright.txt",
   "stats": [
     {
       "type": {
         "displayName": "season"
       },
       "group": {
         "displayName": "hitting"
       },
       "exemptions": [],
       "splits": [
         {
           "season": "2024",
           "stat": {
             "gamesPlayed": 161,
             "groundOuts": 1397,
             "airOuts": 1567,
             "runs": 740,
             "doubles": 264,
             "triples": 16,
             "homeRuns": 190,
             "strikeOuts": 1176,
             "baseOnBalls": 448,
             "intentionalWalks": 28,
             "hits": 1448,
             "hitByPitch": 67,
             "avg": ".262",
             "atBats": 5530,
             "obp": ".322",
             "slg": ".418",
             "ops": ".740",
             "caughtStealing": 24,
             "stolenBases": 93,
             "stolenBasePercentage": ".795",
             "groundIntoDoublePlay": 132,
             "numberOfPitches": 22359,
             "plateAppearances": 6107,
             "totalBases": 2314,
             "rbi": 701,
             "leftOnBase": 1113,
             "sacBunts": 12,
             "sacFlies": 46,
             "babip": ".299",
             "groundOutsToAirouts": "0.89",
             "catchersInterference": 4,
             "atBatsPerHomeRun": "29.10"
           },
           "team": {
             "id": 117,
             "name": "Houston Astros",
             "link": "/api/v1/teams/117"
           }
         }
       ]
     },
     {
       "type": {
         "displayName": "season"
       },
       "group": {
         "displayName": "pitching"
       },
       "exemptions": [],
       "splits": [
         {
           "season": "2024",
           "stat": {
             "gamesPlayed": 161,
             "gamesStarted": 161,
             "groundOuts": 1252,
             "airOuts": 1440,
             "runs": 649,
             "doubles": 222,
             "triples": 16,
             "homeRuns": 183,
             "strikeOuts": 1479,
             "baseOnBalls": 544,
             "intentionalWalks": 2,
             "hits": 1238,
             "hitByPitch": 61,
             "avg": ".231",
             "atBats": 5363,
             "obp": ".307",
             "slg": ".381",
             "ops": ".688",
             "caughtStealing": 37,
             "stolenBases": 135,
             "stolenBasePercentage": ".785",
             "groundIntoDoublePlay": 116,
             "numberOfPitches": 23927,
             "era": "3.74",
             "inningsPitched": "1432.0",
             "wins": 88,
             "losses": 73,
             "saves": 43,
             "saveOpportunities": 69,
             "holds": 94,
             "blownSaves": 26,
             "earnedRuns": 595,
             "whip": "1.24",
             "battersFaced": 6018,
             "outs": 4296,
             "gamesPitched": 161,
             "completeGames": 2,
             "shutouts": 11,
             "strikes": 15197,
             "strikePercentage": ".640",
             "hitBatsmen": 61,
             "balks": 10,
             "wildPitches": 49,
             "pickoffs": 7,
             "totalBases": 2041,
             "groundOutsToAirouts": "0.87",
             "winPercentage": ".547",
             "pitchesPerInning": "16.71",
             "gamesFinished": 159,
             "strikeoutWalkRatio": "2.72",
             "strikeoutsPer9Inn": "9.30",
             "walksPer9Inn": "3.42",
             "hitsPer9Inn": "7.78",
             "runsScoredPer9": "4.08",
             "homeRunsPer9": "1.15",
             "catchersInterference": 4,
             "sacBunts": 8,
             "sacFlies": 38
           },
           "team": {
             "id": 117,
             "name": "Houston Astros",
             "link": "/api/v1/teams/117"
           }
         }
       ]
     },
     {
       "type": {
         "displayName": "season"
       },
       "group": {
         "displayName": "fielding"
       },
       "exemptions": [],
       "splits": [
         {
           "season": "2024",
           "stat": {
             "gamesPlayed": 161,
             "gamesStarted": 161,
             "caughtStealing": 37,
             "stolenBases": 135,
             "stolenBasePercentage": ".785",
             "assists": 1312,
             "putOuts": 4296,
             "errors": 84,
             "chances": 5692,
             "fielding": ".985",
             "rangeFactorPerGame": "34.83",
             "rangeFactorPer9Inn": "3.92",
             "innings": "12888.0",
             "games": 161,
             "passedBall": 2,
             "doublePlays": 130,
             "triplePlays": 0,
             "catchersInterference": 4,
             "wildPitches": 49,
             "throwingErrors": 43,
             "pickoffs": 0
           },
           "team": {
             "id": 117,
             "name": "Houston Astros",
             "link": "/api/v1/teams/117"
           }
         }
       ]
     }
   ]
 }
 */

