//
//  classDisplay.swift
//  Swift-Lesson-2
//
//  Created by Alla on 11/8/18.
//  Copyright © 2018 Andrei Savchenko. All rights reserved.
//

import Foundation

class Display {
    func view( carModel: String,  stateMotor: Bool, speed: UInt, speedMax: UInt) {
        print("--- Display View ---\n" +
            "Автомобиль \(carModel)\n" +
            "Мотор \(stateMotor)\n" +
            "Скорость текущая \(speed)\n" +
            "Скорость максимальная \(speedMax)\n" +
            "--------------------")
    }
}
