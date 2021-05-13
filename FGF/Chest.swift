//
//  Chest.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



class Chest {
    
    func randomWeapon() -> Weapon? {
        
        let randomNumber = Int.random(in: 1...5)
        
        if randomNumber == 1 {
            return Sword()
        }
        if randomNumber == 2 {
            return Knife()
        }
        if randomNumber == 3 {
            return Stick()
        }
        if randomNumber == 4 {
            return Axe()
        }
        if randomNumber == 5 {
            return Bow()
        }
    return nil
 }
}
