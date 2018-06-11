//
//  SampleComponent.swift
//  Conduit
//
//  Created by John Hammerlund on 6/8/18.
//  Copyright © 2018 MINDBODY. All rights reserved.
//

import Foundation

final class Car: NSObject {

    var numWheels: Int
    var make: String
    var model: String

    init(make: String, model: String, numWheels: Int) {
        self.make = make
        self.model = model
        self.numWheels = numWheels
    }

    private func pressGasPedal() {

    }

    func drive() {
        pressGasPedal()
    }

    func stop() {
        
    }

}
