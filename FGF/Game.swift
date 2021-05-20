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
            
            //var userAwnsered = false
            // si "if" fonctionne deux fois seulement, si "while" en boucle infini
            //while userAwnsered == false  {
            
            
            //Verifier que le nombre est bien < 3
            //if number >= 0 && number <= 5 {
            
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
  
}
