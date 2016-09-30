//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
        self.isHungry = true
}

    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
        if self.isHungry && self.home.distanceTo(to: service.location) < 5000 {
            isHungry = false
            return true
        } else {
            return false
        }
    }


}
