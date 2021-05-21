//
//  main.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation


//let game = Game()
//game.startGame()
//game.createTeams()

let pikachu = Warrior(name: "Pikachu")
let bulbizarre = Lumberjack(name: "Bulbizarre")
print(bulbizarre.life)
pikachu.actionOn(otherCharacter: bulbizarre, target: .ennemy)
print(bulbizarre.life)

pikachu.actionOn(otherCharacter: bulbizarre, target: .ally)
print(bulbizarre.life)

pikachu.actionOn(otherCharacter: bulbizarre)
print(bulbizarre.life)
