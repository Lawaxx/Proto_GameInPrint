//
//  Chest.swift
//  FGF
//
//  Created by Aurélien Waxin on 19/04/2021.
//

import Foundation



final class Chest {
    
    //Fonction attribution d'arme aléatoire 
    func randomWeapon() -> Weapon? {
        
        let randomNumber = Int.random(in: 1...6)
        
        if randomNumber == 1 {
            print(" 🎞 Un coffre contenant : 🗡 Sword : apparait ")
            return Sword()
        }
        if randomNumber == 2 {
            print(" 🎞 Un coffre contenant : 🔪 Knife : apparait ")
            return Knife()
        }
        if randomNumber == 3 {
            print(" 🎞 Un coffre contenant : 🦯 Stick : apparait ")
            return Stick()
        }
        if randomNumber == 4 {
            print(" 🎞 Un coffre contenant : 🪓 Axe : apparait ")
            return Axe()
        }
        if randomNumber == 5 {
            print(" 🎞 Un coffre contenant : 🏹 Bow : apparait ")
            return Bow()
        }
        if randomNumber == 6 {
            print(" 🎞 Un coffre contenant : ⚡️ Excalibur : apparait !")
            return Excalibur()
        }
        return nil
    }
}
