//
//  Character.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Character {
    init(life: Int = 0, name: String = "", weapon: Weapon) {
        self.life = life
        self.name = name
        self.weapon = weapon
        //self.type = type
    }
    
    
    class var lifeMax : Int {
        return 100
    }
    var life : Int = 0
    var name : String = ""
    var weapon : Weapon
    //var type : CharacterType
    var isDead : Bool {
        if life <= 0 {
        return true
     }
       return false
    }

//    enum actionType{
//    case attacks
//    case heal
//    }
//    func actionOn(otherCharacter: Character) {
//       
//        if actionType == .heal {
//            print("Sa vie est deja pleine")
//            otherCharacter.life += 10
//
//        }
//        if actionType == .attacks {
//            otherCharacter.life -= weapon.damage
//        }
//       
//    }
   
    func attack(target: Character) {
        if target.isDead == false {
            target.life  -= weapon.damage
            print("\(self.name) attaque \(target.name) et lui retire \(self.weapon.damage) de PV." )
            print("La vie de \(target.name) est maintenant de \(target.life)")
            print("")
        }
        if target.life <= 0 && target.isDead == true {
                target.life = 0
                print("")
                print("\(target.name) est mort. Il est retiré du jeu.")
            }
     
            
        }
    func actionOn(otherCharacter: Character){
        if otherCharacter.life == 100 {
            print("La vie de \(otherCharacter.name) est deja pleine , il ne peut pas etre soigné.")
            return game.startBattle()
        }
        
        if otherCharacter.isDead == false && life <= 100 {
            otherCharacter.life += 15
            print ("\(self.name) rend 15 PV a \(otherCharacter.name)")
            print("La vie de \(otherCharacter.name) est maintenant de \(otherCharacter.life) ")
            print("")
        }
        if otherCharacter.isDead == true {
            otherCharacter.life = 0
            print("")
            print(" \(otherCharacter.name) est mort. Il ne peut plus etre soigné.")
        }
//        if otherCharacter.life == 100 {
//            print("La vie de \(otherCharacter.name) est deja pleine , il ne peut pas etre soigné.")
//        }
    }
    
}


