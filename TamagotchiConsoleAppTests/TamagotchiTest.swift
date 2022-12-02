//
//  TamgotchiTest.swift
//  TamagotchiConsoleAppTests
//
//  Created by Carruthers, James (EJNR) on 30/11/2022.
//

import XCTest

class TamgotchiTest: XCTestCase {

    func testWhenTamagotchiEatsSnackThatHungerDecreasesBy1AndWeightIncreasesByHalfAndHappinessIncreasesBy1() {
        let startingHunger = 9
        let startingWeight = 13.7
        let startingHappiness = 6
        
        let finalHunger = 8
        let finalWeight = 14.2
        let finalHappiness = 7
        
        let tamagotchi = Tamagotchi(hunger: startingHunger, weight: startingWeight, happiness: startingHappiness)
        tamagotchi.eatSnack()
        
        XCTAssertEqual(tamagotchi.readHunger(), finalHunger)
        XCTAssertEqual(tamagotchi.readWeight(), finalWeight)
        XCTAssertEqual(tamagotchi.readHappiness(), finalHappiness)
    }
    
    func testWhenPlayingAGameWithTamagotchiThatHappinessIncreasesBy4() {
        
    }
    
    func testAbilityToConstructTamagotchiWithParametersAsValuesForAttributes() {
        let hunger = 4
        let weight = 8.6
        let happiness = 7
        
        let tamagotchi = Tamagotchi(hunger: hunger, weight: weight, happiness: happiness)
        let tamagotchiHunger = tamagotchi.readHunger()
        let tamagotchiWeight = tamagotchi.readWeight()
        let tamagotchiHappiness = tamagotchi.readHappiness()
        
        XCTAssertEqual(hunger, tamagotchiHunger)
        XCTAssertEqual(weight, tamagotchiWeight)
        XCTAssertEqual(happiness, tamagotchiHappiness)
    }
    
    func testWhenTamagotchiConstructedWithAttributesGreaterThanExpectedThatTheyOnlyInitialiseAtTheLimit() {
        let hungerLimit = 10
        let weightLimit = 20.0
        let happinessLimit = 10
        let overHunger = 12
        let overWeight = 24.3
        let overHappiness = 24
        
        let tamagotchi = Tamagotchi(hunger: overHunger, weight: overWeight, happiness: overHappiness)
        
        XCTAssertEqual(hungerLimit, tamagotchi.readHunger())
        XCTAssertEqual(weightLimit, tamagotchi.readWeight())
        XCTAssertEqual(happinessLimit, tamagotchi.readHappiness())
    }
    
    func testWhenTamagotchiConstructedWithAttributesLessThanExpectedThatTheyOnlyInitialiseAtTheLimit() {
        let hungerLimit = 0
        let weightLimit = 0.1
        let happinessLimit = 0
        let underHunger = -4
        let underWeight = -0.8
        let underHappiness = -29
        
        let tamagotchi = Tamagotchi(hunger: underHunger, weight: underWeight, happiness: underHappiness)
        XCTAssertEqual(hungerLimit, tamagotchi.readHunger())
        XCTAssertEqual(weightLimit, tamagotchi.readWeight())
        XCTAssertEqual(happinessLimit, tamagotchi.readHappiness())
        
        
        
    }

}
