//
//  classCar.swift
//  Swift-Lesson-2
//
//  Created by Alla on 11/8/18.
//  Copyright © 2018 Andrei Savchenko. All rights reserved.
//

import Foundation

class Car {
    var modelCar: String = "Tesla Model S"
    private var motor = Motor()
    private var display = Display()
    
    init(_ modelCar: String) {
        self.modelCar = modelCar
    }
    
    func viewDisplay() {
        display.view(carModel: modelCar,
                     stateMotor: motor.stateMotor,
                     speed: motor.speed,
                     speedMax: motor.speedMax)
    }
    
    func motorStart() {
        if motor.stateMotor {
            print("Мотор уже заведён")
        }
        if !motor.stateMotor {
            motor.statesMotor(onOff: false)
            print("Мотор заведён")
        }
    }
    
    func motorStop() {
        if !motor.stateMotor {
            print("Мотор уже заглушен")
        }
        if motor.stateMotor {
            motor.statesMotor(onOff: true)
            motor.speed = 0
            print("Мотор заглушен")
        }
    }
    
    func setSpeed(speedCurr: UInt) {
        
        if !motor.stateMotor {
            print("Сначала заведите мотор")
        }
        
        if motor.stateMotor {
            if speedCurr > motor.speedMax {
                print("Заданная скорость больше максимальной для этой модели")
            } else {
                self.motor.speed = speedCurr
            }
        }
        print("Скорость авто \(motor.speed)")
    }
    
    func pressBrake() {
        motor.brake = "Нажата педаль тормоза"
        print(motor.brake)
        motor.speedReduction()
        sleep(2)
        motor.brake = "Отжата педаль тормоза"
        print(motor.brake)
    }
}
