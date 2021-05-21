//
//  Character.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Character {
    enum TargetType {
        case ally
        case ennemy
    }
    var life : Int
    var name : String
    var weapon : Weapon
    
    init(life:Int, name:String, weapon:Weapon){
    
    self.life = life
    self.name = name
    self.weapon = weapon
        
 }
    func actionOn(otherCharacter: Character, target: Character.TargetType = .ennemy) {
    
        if target == .ally {
            otherCharacter.life += weapon.damage
        } else if target == .ennemy {
            otherCharacter.life -= weapon.damage
        }
    }
    
    
}

