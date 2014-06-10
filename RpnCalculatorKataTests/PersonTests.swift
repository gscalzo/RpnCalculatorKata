//
//  PersonTests.swift
//  RpnCalculatorKata
//
//  Created by Giordano Scalzo on 10/06/2014.
//  Copyright (c) 2014 XpItLondon. All rights reserved.
//

import Quick

class Person {
    var isHappy =  true
    var isSatisfied =  true
    var greeting =  "Oh, hi."
}

class PersonSpec: QuickSpec {
    override class func exampleGroups() {
        describe("Person") {
            var person: Person?
            beforeEach { person = Person() }
            
            it("is happy but never satisfied") {
                expect(person!.isHappy).to.beTrue()
                expect{person!.isSatisfied}.willNot.beTrue()
            }
            
            describe("greeting") {
                context("when the person is unhappy") {
                    beforeEach { person!.isHappy = false }
                    it("is lukewarm") {
                        expect(person!.greeting).to.equal("Oh, hi.")
                        expect(person!.greeting).notTo.equal("Hello!")
                    }
                }
                
                context("when the person is happy") {
                    beforeEach { person!.isHappy = true }
                    it("is enthusiastic") {
                        expect(person!.greeting).to.equal("Hello!")
                        expect(person!.greeting).notTo.equal("Oh, hi.")
                    }
                }
            }
        }
    }
}