//
//  main.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation


let game = Game()
game.startGame()
game.createTeams()
game.startBattle()

//1)
//Tout ce qui est interaction présentateur(Game)/joueur(Player) de type readline() -> Game
//Eviter effet de bord type parametre qui peut rentrer en conflit avec état interne

//2)
//Se débarasser du Priest
//Ajouter en parametre typeAction: TypeAction (enum avec 2 cases soigner, attaquer)


//3)
// méthode turnOnFight
//Etape:
//Via readline()
// ----- Choix de l'arme ----- //
//Choix character joueur qui à la main
// ----- modifier arme du character ---- //
//Choix character joueur adverse
//Choix type d'action
//Gérer erreur depuis class Game

//Faire l'action du character sur le character adverse
