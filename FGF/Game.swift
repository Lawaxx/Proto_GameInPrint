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
    
    
//    func teamAlive(player : Player) -> Bool {
//        for (index , Character) in player.team.enumerated() {
//            if Character.life < 0 {
//                diedCharacter.append(Character)
//                player.team.remove(at: index)
//            }
//        }
//        if player.team.count == 0 {
//            return false
//        }
//        return true
//    }
    
    // func battleTurn(attacker: Player , defender: Player) {
        // battleTurn(attacker: Player1 , defender : player2)
        // Switch choice -> character in team.enum ?
        // defender.life - attacker.damage
        // if defender.life <= 0 -> add diedCharacter
        // if teamAlive player2 == true
        // battleTurn(attacker:Player2, defender: Player1)
    //}
    
    
}
