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

    //var newNameteam : [String] = []
    
    
    
    
    //    func createTeam() {
    //
    //        for Character in team {
    //
    //            func renameCharacter() -> String {
    //
    //                let newCharacterName : String = readLine()!
    //
    //                if newCharacterName.contains(Character.name)  {
    //                    print("Je vous laisse choisir un nom qui n'existe pas encore ")
    //                    return renameCharacter()
    //                }
    //
    //
    //                while team.count < 3 {
    //
    //                    let choice = readLine()
    //
              //             switch choice {
//                        case "1":
//                            print("Tu as choisi Warrior, donne-lui un nom :")
//                            let nameHero = renameCharacter()
//                            let character = Warrior(name: nameHero)
//                            team.append(character)
//                            newNameteam.append(nameHero)
//                        case "2":
//                            print("Tu as choisi Priest, donne-lui un nom :")
//                            let nameHero = renameCharacter()
//                            let character = Priest(name: nameHero)
//                            team.append(character)
//                            newNameteam.append(nameHero)
//                        case "3":
//                            print("Tu as choisi Thief, donne-lui un nom :")
//                            let nameHero = renameCharacter()
//                            let character = Thief(name: nameHero)
//                            team.append(character)
//                            newNameteam.append(nameHero)
//                        case "4":
//                            print("Tu as choisi Lumberjack, donne-lui un nom :")
//                            let nameHero = renameCharacter()
//                            let character = Lumberjack(name: nameHero)
//                            team.append(character)
//                            newNameteam.append(nameHero)
//                        case "5":
//                            print("Tu as choisi Bowman, donne-lui un nom :")
//                            let nameHero = renameCharacter()
//                            let character = Bowman(name: nameHero)
//                            team.append(character)
//                            newNameteam.append(nameHero)
//                        default:
//                            print("Votre choix n'est pas valide")
//                        }
    //
    //
    //                }
    //                return newCharacterName
    //            }
    //        }
    //    }
    
}
