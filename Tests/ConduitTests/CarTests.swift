//
//  CarTests.swift
//  Conduit
//
//  Created by John Hammerlund on 6/8/18.
//  Copyright © 2018 MINDBODY. All rights reserved.
//

import XCTest
@testable import Conduit

class CarTests: XCTestCase {

    func testExample() {
        let car = Car(make: "Ford", model: "Mustang", numWheels: 3)
        car.drive()
    }
}
