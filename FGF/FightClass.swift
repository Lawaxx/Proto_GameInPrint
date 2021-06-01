//
//  FightClass.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Warrior : Character {
    
    var defaultWeapon = Sword()
    override class var lifeMax: Int {
        return 100
    }
    init(name: String){
        
        super.init(life: 100, name: "Warrior", weapon: defaultWeapon, type: .other)
  
    }
}

class Priest : Character {
    
    var defaultWeapon = Stick()
    override class var lifeMax: Int {
        return 100
    }
    init(name : String){
        
        super.init(life: 100, name: "Priest", weapon: defaultWeapon, type: .priest)
    }
}

class Thief : Character {
    
    var defaultWeapon = Knife()
    override class var lifeMax: Int {
        return 100
    }
    init(name : String){
    
        super.init(life: 100, name: "Thief", weapon: defaultWeapon, type: .other)
    }
}

class Lumberjack : Character {
    
    var defaultWeapon = Axe()
    override class var lifeMax: Int {
        return 100
    }
    init(name: String){
        
        super.init(life: 100, name: "Lumberjack", weapon: defaultWeapon, type: .other)
    }
}

class Bowman : Character {
    
    var defaultWeapon = Bow()
    override class var lifeMax: Int {
        return 100
    }
    init(name: String){
        
        super.init(life: 100, name: "Bowman", weapon: defaultWeapon, type: .other)
    }
}
