//
//  classMotor.swift
//  Swift-Lesson-2
//
//  Created by Alla on 11/8/18.
//  Copyright © 2018 Andrei Savchenko. All rights reserved.
//

import Foundation

class Motor {
    var stateMotor: Bool = false                    // состояние выкл/вкл
    var wheels: String = "Колёса не крутятся"       // колёса
    var brake: String = "Отжата педаль тормоза"     // тормоз
    var speed: UInt = 0                             // скорость текущая
    var speedMax: UInt = 320                        // скорость макс
    var onOff: Bool = false
    
    init(_ stateMotor: Bool = false,
         _ wheels: String = "Колёса не крутятся",
         _ brake: String = "Отжата педаль тормоза",
         _ speed: UInt = 0,
         _ speedMax: UInt = 320,
         _ onOff: Bool = false) {
        self.stateMotor = stateMotor
        self.wheels = wheels
        self.brake = brake
        self.speed = speed
        self.speedMax = speedMax
        self.onOff = onOff
    }
    
    func statesMotor(onOff: Bool) {
        if !onOff {
            stateMotor = true
        }
        if onOff {
            stateMotor = false
        }
    }
    
    func stateWheels() -> String {
        if speed != 0 {
            wheels = "Колёса крутятся"
        }
        if speed == 0 {
            wheels = "Колёса не крутятся"
        }
        return wheels
    }
    
    func speedReduction() {                                       // уменьшение скорости
        switch speed {
        case 20...speedMax:
            print("Скорость снижена на 20 км/ч")
        case 1...19:
            print("Авто остановилось")
        default:
            print("Авто стоит")
        }
    }
}
