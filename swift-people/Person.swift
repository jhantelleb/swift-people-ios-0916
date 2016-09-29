//
//  Person.swift
//  swift-people
//
//  Created by Jhantelle Belleza on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person{
    var name: String
    var ageInYears: Int? = nil
    //var skills: [String] = []
    var skills = Set<String>()
    var qualifiedTutor: Bool {
        return (skills.count >= 4)
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }

    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    init() { // To check if correct.
        self.name = "John Doe"
        self.ageInYears = nil
    }

    func celebrateBirthday()->String {
        var birthdayGreeting = String()
       
         if ageInYears != nil {
            if let age = ageInYears{
            ageInYears = age + 1
            birthdayGreeting =
            "HAPPY \(ageInYears!)\(ageInYears!.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"}
         } else {
            birthdayGreeting = "HAPPY BIRTHDAY, \(name.uppercased())!!!"
         }
        return birthdayGreeting
    }
    
    func learnSkillBash() {
        //"bash"
        skills.insert("bash")
    }
    
    func learnSkillXcode() {
        skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC() {
        skills.insert("Objective-C")
    }
    
    func learnSkillSwift() {
        skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        skills.insert("Interface Builder")
    }
    
}


