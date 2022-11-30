//
//  TamgotchiTest.swift
//  TamagotchiConsoleAppTests
//
//  Created by Carruthers, James (EJNR) on 30/11/2022.
//

import XCTest

class TamgotchiTest: XCTestCase {

    func testWhenICreateATamagotchiItsWeightHungerAndHappinessAreInitialisedTo0() {
        //arrange
        
        //act
        let tamagotchi = Tamagotchi(hunger: 0, weight: 0.0, happiness: 0)
        let hunger = tamagotchi.hunger
        let weight = tamagotchi.weight
        let happinesss = tamagotchi.happiness
        
        let expectedHunger = 0
        let expectedWeight = 0.0
        let expectedHappiness = 0
        //assert
        XCTAssertEqual(hunger, expectedHunger)
        XCTAssertEqual(weight, expectedWeight)
        XCTAssertEqual(happinesss, expectedHappiness)
    }
    
    func testWhenTamagotchiEatsSnackThatHungerDecreasesAndWeightIncreasesAndHappinessIncreases() {
        
        let tamagotchi = Tamagotchi()
        let initialHunger = tamagotchi.hunger
        let initialWeight = tamagotchi.weight
    }
    
    func testAbilityToConstructTamagotchiWithParametersAsValuesForAttributes() {
        let hunger = 4
        let weight = 8.6
        let happiness = 7
        
        let tamagotchi = Tamagotchi(hunger: hunger, weight: weight, happiness: happiness)
    }

}
