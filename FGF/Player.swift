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
    var diedCharacter : [Character] = []
    
    //func selectCharacter(team: [Character] ) -> Character?  {
    func selectCharacter(at Index: [Character]) -> Character? {
        for (index, character) in team.enumerated() {
              //Personnage dans le tableau
              print("Le personnage #\(index + 1)  \(character.name)") // Retourner le nom choisi ?
          }
         
          // Check is dead character
          if let choice = readLine(){
              if let choiceInt = Int(choice){
                  if choiceInt >= 1 && choiceInt <= team.count {
                      return team[choiceInt - 1]
                  }
              }
          }
          
        return selectCharacter(at: [])
      }
    
    func teamAlive(player : Player) -> Bool {
            for (index , Character) in player.team.enumerated() {
                if Character.life < 0 {
                    diedCharacter.append(Character)
                    player.team.remove(at: index)
                }
            }
            if player.team.count == 0 {
                return false
            }
            return true
        }
    
    
    

}
