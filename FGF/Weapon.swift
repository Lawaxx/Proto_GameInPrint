//
//  Weapon.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation

// Init class Weapons

class Weapon {
    
    var name : String
    var damage : Int
    
    init(name:String, damage:Int){
        
        self.name = name
        self.damage = damage
    }
}

class Sword : Weapon {
    
    init(){
        
        super.init(name: "Sword", damage: 25)
    }
}

class Knife : Weapon {
    
    init(){
        
        super.init(name: "Knife", damage: 15)
    }
}

class Stick : Weapon {
    
    init(){
        
        super.init(name: "Stick", damage: 0)
    }
}

class Axe : Weapon {
    
    init(){
        
        super.init(name: "Axe", damage: 30)
    }
}

class Bow : Weapon {
    
    init(){
        
        super.init(name: "Bow", damage: 15)
    }
}

