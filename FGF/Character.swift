//
//  Character.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Character {
    init(life: Int = 0, name: String = "", weapon: Weapon, type: Character.CharacterType) {
        self.life = life
        self.name = name
        self.weapon = weapon
        self.type = type
    }
    
    
    enum CharacterType {
        case priest
        case other
        case hybrid
    }
    class var lifeMax : Int {
        return 100
    }
    var life : Int = 0
    var name : String = ""
    var weapon : Weapon
    var type : CharacterType
    var isDead : Bool {
        if life <= 0 {
        return true
     }
       return false
    }
//    init(life:Int, name:String, weapon:Weapon, type: CharacterType = .other){
//        
//    self.life = life
//    self.name = name
//    self.weapon = weapon
//    self.type = type
// }
    func actionOn(otherCharacter: Character) {
        
        if type == .priest && otherCharacter.life == Character.lifeMax {
            print("Sa vie est deja pleine")
            otherCharacter.life += 0
            return otherCharacter.life = 100
        }
        if type == .priest && otherCharacter.life != Character.lifeMax {
            otherCharacter.life += weapon.damage
        } else if type == .other {
            otherCharacter.life -= weapon.damage
        }
       
    }
   
    func attack(target: Character) {
        if target.isDead == false {
            target.life  -= weapon.damage
            print("\(self.name) attaque \(target.name) et lui retire \(self.weapon.damage) de PV." )
            print("")
        }
        if target.life <= 0 && target.isDead == true {
                target.life = 0
                print("\(target.name) est mort. Il est retiré du jeu.")

            }
     
            
        }
    
    
}


