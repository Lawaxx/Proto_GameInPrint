//
//  Game.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Game {
    
    var player1 = Player(playerNumber: 1)
    var player2 = Player(playerNumber: 2)
    var characterNames = [String]()
    var diedCharacter = [Character]()
    private var battleRound = Int()
    
    
    
    func startGame() {
        
        //Creer annonce general
        print ("Bienvenue dans l'Arene ! ")
        print ("Votre combat ce deroulera en tour par tour.")
        print ("Avant de combattre , vous devez composer une equipe de trois personnages.")
        print ("")
        
        
        
    }
    
    func createTeams(){
        
        for player in [player1, player2] {
            
            print("")
            print("Joueur \(player.playerNumber) , choisissez un combattant :")
            print ("")
           
            while player.team.count < 3 {
                print ("1: Warrior  2: Priest  3: Thief  4: Lumberjack  5: Bowman ")
                let choice = readLine()!
                if Int(choice) != nil {
                    
                    switch Int(choice) {
                    
                    case 1 :
                        print("Tu as choisi Warrior, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterNameIsValid(name: characterName) {
                            let character = Warrior(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                            
                        }
                    case 2 :
                        print("Tu as choisi Priest, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterNameIsValid(name: characterName) {
                            let character = Priest(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                        }
                        
                        
                    case 3 :
                        print("Tu as choisi Thief, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterNameIsValid(name: characterName) {
                            let character = Thief(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                        }
                        
                    case 4 :
                        print("Tu as choisi Lumberjack, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterNameIsValid(name: characterName) {
                            let character = Lumberjack(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                        }
                        
                    case 5 :
                        print("Tu as choisi Bowman, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterNameIsValid(name: characterName) {
                            let character = Bowman(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                        }
                    default :
                        print ("Choisissez un personnage valide ")
                        
                    }
                    if player.team.count == 0 || player.team.count <= 2 {
                        print("")
                        print("Choisissez un autre combattant :")
                    }
                    if player2.team.count == 3 {
                        print("")
                        print("Vos equipes sont pretes")
                        print("Place maintenant..")
                        print("AU COMBAT !")
                    }
            
                    
                }
                
            }
            
        }
    }
    
    func characterNameIsValid (name: String) -> Bool {
        if name.count < 3 {
            print("Nom invalide")
            return false
        }
        if characterNames.contains(name){
            print("Ce nom est deja pris ")
            return false
        }
        return true
    }
    
//    func selectCharacter(at Index: [Character]) -> Character? {
//        for (index, character) in Player.team.enumerated(){
//              //Personnage dans le tableau
//              print("Le personnage #\(index + 1)  \(character.name)")
//          }
//
//          // Check is dead character
//          if let choice = readLine(){
//              if let choiceInt = Int(choice){
//                  if choiceInt >= 1 && choiceInt <= team.count {
//                      return team[choiceInt - 1]
//                  }
//              }
//          }
//          //   initaial choice
//        return selectCharacter(at: [])
//      }
    
    func TurnOfFight (attacker: Player, defender: Player)  {
           //let chest = Chest()
        let chest = Chest()
           // Choose character
        print("Joueur \(attacker.playerNumber) Choisi un personnage pour faire l'action :")
           //let attackingCharacter = attacker.selectCharacter(team: attacker.team)
        let attackingCharacter = attacker.selectCharacter(at: attacker.team)
        print("")
        print("Quel action veux tu faire ?")
        print("")
        print("1. Attaquer ")
        print("2. Soigner ")
        let action = readLine()!
        switch Int(action) {
        case 1:
            //attackingCharacter!.attack(target: defender.selectCharacter(at: defender.team)!)
            print("")
            print("Choisi une cible:")
         let targetCharacter = defender.selectCharacter(at: defender.team)
            if let attak = attackingCharacter,let target = targetCharacter {
                attak.attack(target: target)
            }
        case 2:
            //attackingCharacter!.actionOn(otherCharacter: attacker.selectCharacter(at: attacker.team)! )
            print("")
            print("Choisi une cible:")
         let targetCharacter = attacker.selectCharacter(at: attacker.team)
            if let action = attackingCharacter,let target = targetCharacter {
                action.actionOn(otherCharacter: target)
            }
        default: break
            
        }
        
       }

        
    
    func startBattle(){
        for player in [player1, player2] {
            print("")
            fight()
        }
     
}
    
    func fight() {
        while teamAlive(player: player1) && teamAlive(player: player2){
                
                TurnOfFight(attacker: player1, defender: player2)
                //numberOfTurn += 1
                if teamAlive(player: player2){
                    
                    TurnOfFight(attacker: player2, defender: player1 )
                }
            }
        }
      
    func teamAlive(player : Player) -> Bool {
            for (index , Character) in player.team.enumerated() {
                if Character.life <= 0 {
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
