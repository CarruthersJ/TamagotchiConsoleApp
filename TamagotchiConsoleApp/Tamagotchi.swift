//
//  TamagotchiClass.swift
//  TamagotchiConsoleApp
//
//  Created by Carruthers, James (EJNR) on 30/11/2022.
//

import Foundation

class Tamagotchi {
    
    private var hunger : Int
    private var weight : Double
    private var happiness : Int
    
    init(hunger: Int, weight: Double, happiness: Int) {
        self.hunger = 0
        self.weight = 0
        self.happiness = 0
        changeHunger(newHunger: hunger)
        changeWeight(newWeight: weight)
        changeHappiness(newHappiness: happiness)
    }
    
    func readHunger() -> Int {
        return self.hunger
    }
    
    func readWeight() -> Double {
        return self.weight
    }
    
    func readHappiness() -> Int {
        return self.happiness
    }
    
    func changeHunger(newHunger: Int) {
        if newHunger < 0 {
            self.hunger = 0
        } else if newHunger > 10 {
            self.hunger = 10
        } else {
            self.hunger = newHunger
        }
    }
    
    func changeWeight(newWeight: Double) {
        if newWeight < 0.1 {
            self.weight = 0.1
        } else if newWeight > 20.0 {
            self.weight = 20.0
        } else {
            self.weight = newWeight
        }
    }
    
    func changeHappiness(newHappiness: Int) {
        if newHappiness < 0 {
            self.happiness = 0
        } else if newHappiness > 10 {
            self.happiness = 10
        } else {
            self.happiness = newHappiness
        }
    }
    
    func eatSnack() {
        let currentHunger = self.hunger
        let currentWeight = self.weight
        let currentHappiness = self.happiness
        
        changeHunger(newHunger: currentHunger - 1)
        changeWeight(newWeight: currentWeight + 0.5)
        changeHappiness(newHappiness: currentHappiness + 1)
    }
}
