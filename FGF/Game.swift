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
            
            print("Joueur \(player.playerNumber) , choisissez un combattant :")
            print ("")
            
            var userAwnsered = false
            while userAwnsered == false && player.team.count <= 2 {
                
                
                print ("1: Warrior  2: Priest  3: Thief  4: Lumberjack  5: Bowman ")
                let choice = readLine()!
                if Int(choice) != nil {
                    //Verifier que le nombre est bien < 3
                    //if number >= 0 && number <= 5 {
                    
                    switch Int(choice) {
                    
                    case 1 :
                        print("Tu as choisi Warrior, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterName.count > 0 && characterName.count < 3 {
                            print ("Veuillez saisir au moins 3 caracteres ")
                            if characterName.isEmpty {
                                print ("Choisissez un nom valide ")
                            }
                            let character = Warrior(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                            
                        }
                    case 2 :
                        print("Tu as choisi Priest, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterName.count > 0 && characterName.count < 3 {
                            print ("Veuillez saisir au moins 3 caracteres ")
                            if characterName.isEmpty {
                                print ("Choisissez un nom valide ")
                            }
                            let character = Priest(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                        }
                    case 3 :
                        print("Tu as choisi Thief, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterName.count > 0 && characterName.count < 3 {
                            print ("Veuillez saisir au moins 3 caracteres ")
                            if characterName.isEmpty {
                                print ("Choisissez un nom valide ")
                            }
                            let character = Thief(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                        }
                    case 4 :
                        print("Tu as choisi Lumberjack, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterName.count > 0 && characterName.count < 3 {
                            print ("Veuillez saisir au moins 3 caracteres ")
                            if characterName.isEmpty {
                                print ("Choisissez un nom valide ")
                            }
                            let character = Lumberjack(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                        }
                    case 5 :
                        print("Tu as choisi Bowman, donne-lui un nom :")
                        let characterName = readLine()!
                        if characterName.count > 0 && characterName.count < 3 {
                            print ("Veuillez saisir au moins 3 caracteres ")
                            if characterName.isEmpty {
                                print ("Choisissez un nom valide ")
                            }
                            let character = Bowman(name: characterName)
                            player.team.append(character)
                            characterNames.append(characterName)
                        }
                        
                    default :
                        print ("Choisissez un personnage valide ")
                        
                    }
                    if player.team.count == 2 {
                        userAwnsered = true
                    }
                    
                    
                    
                    
                    
                    
                    //                        print("Choisissez un nom pour votre combattant :")
                    //
                    //                        let characterName = readLine()!
                    //                        if characterName.count > 0 && characterName.count < 3 {
                    //                            print ("Veuillez saisir au moins 3 caracteres ")
                    //                            if characterName.isEmpty {
                    //                                print ("Choisissez un nom valide ")
                    //                            }
                    //                            if player.team.count < 3 {
                    //                                return createTeams()
                    //                            }
                    
                    
                    
                    // demander nom character
                    // verifier nom charcater -> characterNames
                    // si nom valide ajouter a characterNames
                    // si nom invalide veuillez choisir un nom valide (while)
                    
                    // si tout est bon , Ajouter le personnage a la team player
                    //player.team.append(Character(name: characterName))
                }
                
            }
            
        }
        
    }
}







