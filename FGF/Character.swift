//
//  Character.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Character {
    
    var life : Int
    var name : String
    var weapon : Weapon
    
    init(life:Int, name:String, weapon:Weapon){
    
    self.life = life
    self.name = name
    self.weapon = weapon
        
 }
}
