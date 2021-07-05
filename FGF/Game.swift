//
//  Game.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Game {
    
    private let player1 = Player(playerNumber: 1)
    private let player2 = Player(playerNumber: 2)
    private var characterNames = [String]()
    private var diedCharacter = [Character]()
    private var battleRound = Int()
    
    
    // Annonce de debut de partie
    func startGame() {
        
        print (" 📯 BIENVENUE DANS L'ARENE ! 📯 ")
        print("")
        print("Avant de commencer.. voici quelques regles :")
        print("")
        print ("Votre combat ce deroulera en tour par tour..")
        print ("Avant de combattre , vous devez composer une equipe de trois personnages..")
        print ("Chaque personnages sera equipé de son arme favorite..")
        print ("Le premier joueur a ne plus avoir de personnages dans son equipe perd.")
        print("")
        print("")
        print ("Combattants.. A vous de jouer !")
        print ("")
        game.createTeams()
        game.startBattle()
        game.statsEndGame()
    }
    
    
    // Fonction creation d'equipe
   private func createTeams(){
        
        for player in [player1, player2] {
            
            print("")
            print("JOUEUR \(player.playerNumber) , choisissez un combattant :")
            print ("")
            
            while player.team.count < 3 {
                print ("1: 🛡 Warrior (100 PV / Sword 25dg)  2: 🧙🏼‍♂️ Priest (100 PV / Stick 10dg)  3: 🔪 Thief (100 PV / Knife 15dg)  4: 🪓 Lumberjack (100 PV/ Axe 30dg)  5: 🏹 Bowman (100 PV / Bow 15dg) ")
                let choice = readLine()!
                if Int(choice) == Int(choice) {
                    switch Int(choice) {
                    
                    case 1 :
                        askNameValid(CharacterDescription: "Tu as choisi 🛡 Warrior, donne-lui un nom :", player: player, type: 1)
                        
                    case 2 :
                        askNameValid(CharacterDescription: "Tu as choisi 🧙🏼‍♂️ Priest, donne-lui un nom :", player: player, type: 2)
                        
                    case 3 :
                        askNameValid(CharacterDescription: "Tu as choisi 🔪 Thief, donne-lui un nom :", player: player, type: 3)
                        
                    case 4 :
                        askNameValid(CharacterDescription: "Tu as choisi 🪓 Lumberjack, donne-lui un nom :", player: player, type: 4)
                        
                    case 5 :
                        askNameValid(CharacterDescription: "Tu as choisi 🏹 Bowman, donne-lui un nom :", player: player, type: 5)
                        
                    default :
                        print("")
                        print (" ❌ Choisissez un personnage valide ")
                        
                    }
                    if player.team.count == 0 || player.team.count <= 2 {
                        print("")
                        print("Choisissez un autre combattant :")
                    }
                    if player2.team.count == 3 {
                        print("")
                        print("Vos equipes sont pretes")
                        print("Place maintenant..")
                        print("")
                        print("⚔️ AU COMBAT ! ⚔️ ")
                    }
                    
                    
                }
                
            }
            
        }
        
    }
    
    
    //Confirme le choix de character et lui demande un nom valide
    private func askNameValid(CharacterDescription : String , player : Player, type : Int) {
        print(CharacterDescription)
        var characterNameisInvalid = true
        while characterNameisInvalid == true {
            let characterName = readLine()!
            if characterNameIsValid(name: characterName) {
                characterNameisInvalid = false
                let character: Character
                switch type {
                case 1:
                    character = Warrior(name: characterName)
                case 2:
                    character = Priest(name: characterName)
                case 3:
                    character = Thief(name: characterName)
                case 4:
                    character = Lumberjack(name: characterName)
                case 5:
                    character = Bowman(name: characterName)
                default:
                    character = .init(life: 0, name: "", weapon: Weapon.init(name: "", damage: 0))
                }
                player.team.append(character)
                characterNames.append(characterName)
            } else {
                print(" Choisissez un nom : ")
            }
        }
        
    }
    
    
    //Check si le nom est valide
    private func characterNameIsValid (name: String) -> Bool {
        if name.count < 3 {
            print(" ❌ Nom invalide")
            return false
        }
        if characterNames.contains(name){
            print(" ⛔️ Ce nom est deja pris ")
            return false
        }
        return true
    }
    
    // Fonction tour de combat
    private func turnOfFight (attacker: Player, defender: Player)  {
        
        // Choix du character
        print("JOUEUR \(attacker.playerNumber) Choisi un personnage pour faire l'action :")
        
        let attackingCharacter = attacker.selectCharacter()
        if Bool.random(){
            newWeaponFor(character: attackingCharacter)
        }
        
        print("")
        print("Quel action veux tu faire ?")
        print("")
        print("1. ⚔️ Attaquer ")
        print("2. 🧪 Soigner ")
        
        let action = readLine()!
        if Int(action) == Int(action) {
        switch Int(action) {
        case 1:
            print("")
            print("Choisi une cible 🎯 :")
            print("")
            let targetCharacter = defender.selectCharacter()
            
            attackingCharacter.attack(target: targetCharacter)
            
        case 2:
            print("")
            print("Choisi une cible 🎯 :")
            print("")
            let targetCharacter = attacker.selectCharacter()
            
            attackingCharacter.actionOn(otherCharacter: targetCharacter)
            
        default: print("")
                 print("Choix invalide...")
                 print("")
                 print("Joueur suivant !")
                 print("")
                 
            
        }
      }
    }
    
    
    //Fonction debut de bataille
    func startBattle(){
        fight()
    }
    // Fonction de bataille tour par tour
    private func fight() {
        while teamAlive(player: player1) && teamAlive(player: player2){
            
            turnOfFight(attacker: player1, defender: player2)
            battleRound += 1
            
            if teamAlive(player: player2){
                
                turnOfFight(attacker: player2, defender: player1 )
            }
        }
    }
    // Check si l'equipe est encore en vie
    private func teamAlive(player : Player) -> Bool {
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
    
    //Attribution d'une arme aléatoire
    private func newWeaponFor(character: Character) {
        let newWeapon = Chest().randomWeapon()!
        
        print(newWeapon.description())
        print("")
        print("Voulez vous l'utiliser ?")
        print("1: OUI ")
        print("2: NON ")
        
        let response = readLine()!
        if Int(response) == Int(response){
        switch Int(response){
        case 1 : character.weapon = newWeapon
        case 2 : return
        default :
                print("Choix invalide ! Le coffre disparait... 💨 ")
                
            }
        }
    }
    // Fonction Statistique de fin de jeu 
    private func statsEndGame() {
        print("")
        print("")
        
        if teamAlive(player: player1) {
            print( " 🏆 Joueur 1 VAINQUEUR ! ")
            print("")
            print("\(player1.team.forEach{element in print(element.name)}) sont encore vivant et gagnent la bataille ! ")
            print("Joueur 2 a perdu , il n'a plus de personnages en vie..")
        } else {
            print(" 🏆 Joueur 2 VAINQUEUR ! ")
            print("")
            print("\(player2.team.forEach{element in print(element.name)}) sont encore vivant et gagnent la bataille ! ")
            print("Joueur 1 a perdu , il n'a plus de personnages en vie..")
        }
        
        print("")
        print(" 📜 Voici les stats de la partie 📜 ")
        print("")
        print("Nombre de tour : \(battleRound)")
        print("")
        print("Personnages tuées : ")
        print("")
        
        for  Character in diedCharacter {
            print("Nom : \(Character.name), Life : \(Character.life) ")
        }
    }
}
