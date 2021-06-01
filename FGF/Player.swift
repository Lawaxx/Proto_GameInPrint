//
//  Players.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Player {
    init(playerNumber: Int, team: [Character] = []) {
        self.playerNumber = playerNumber
        self.team = team
    }
    
    
    var playerNumber : Int
    var team : [Character] = []
    var teamAlive : Bool {
        team.map { $0.isDead }.isEmpty
    }
    func addCharacter(_ character: Character){
        team.append(character)
    }
    
    func selectCharacter(team: [Character] ) -> Character?  {
        for (index, character) in team.enumerated() {
              //Personnage dans le tableau
              print("Le personnage \(index + 1)  \(character.name)")
          }
         
          // Check this dead character
          if let choice = readLine(){
              if let choiceInt = Int(choice){
                  if choiceInt >= 1 && choiceInt <= team.count {
                      return team[choiceInt - 1]
                  }
              }
          }
          //   initaial choice
          return selectCharacter(team: team)
      }
    
    
    
//    func selectCharacter(at index : Int) -> Character? {
//        for (index, Character) in team.enumerated() {
//            if Character.life > 0 {
//                print("Tu as choisi \(Character.name)")
//            }
//             if let choice = readLine() {
//            switch choice {
//            case "1" where team[0].life > 0 :
//
//
//            case "2" : team[1]
//
//            case "3": team[2]
//
//        return nil
//    }
//
//
//}
//             func chosenFighter(characterNumber: Int) {
//                    fightCharacter = team[characterNumber]
//                    print("Tu as choisi de jouer avec \(Character.name)")
//
//                }
//
}
