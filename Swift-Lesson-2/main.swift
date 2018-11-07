//
//  main.swift
//  Swift-Lesson-2
//
//  Created by Andrei on 10/23/18.
//  Copyright © 2018 Andrei Savchenko. All rights reserved.
//
//Створіть такі класи - двигун, автомобіль, дисплей

//Автомобіль - класс через який користувач взаємодіє з двигуном (може керувати швидкістю, включати/включати двигун).
//Також автомобіль містить інфу про його модель та виводить поточний стан на Дисплей

//Двигун - класс який безпосередньо крутить колеса, керує гальмом. В нього є максимальна швидкість і стан вкл/викл

//Дисплей - це класс який ТІЛЬКИ показує статус автомобіля і двигуна (швидкість, обороти і т. п. )
import Foundation

class Car {
    //    code classa
    var modelCar: String = "Tesla Model S"
    private var motor = Motor()
    private var display = Display()
    
    func viewDisplay() {
        display.view(carModel: modelCar, stateMotor: motor.stateMotor, speed: motor.speed)
    }
    
    func motorStart() {
        if motor.stateMotor == true {
            print("Мотор уже заведён")
        }
        if motor.stateMotor == false {
            motor.statesMotor(onOff: false)
            print("Мотор заведён")
        }
    }
    
    func motorStop() {
        if motor.stateMotor == false {
            print("Мотор уже заглушен")
        }
        if motor.stateMotor == true {
            motor.statesMotor(onOff: true)
            motor.speed = 0
            print("Мотор заглушен")
        }
    }
    
    func setSpeed(speedCurr:UInt) {
        
        if motor.stateMotor==false {
            print("Сначала заведите мотор")
        }
        
        if motor.stateMotor==true {
            
            if speedCurr > motor.speedMax {
                print ("Заданная скорость больше максимальной для этой модели")
            }
            else {
                self.motor.speed = speedCurr
            }
        }
    print ("Скорость авто \(motor.speed)")
    }
    
    func pressBrake() {
        motor.brake = "Нажата педаль тормоза"
        print(motor.brake)
        motor.speedReduction()
        sleep(2)
        depressBrake()
    }
    func depressBrake() {
        motor.brake = "Отжата педаль тормоза"
        print(motor.brake)
    }
}

class Motor {
    //    code classa
    var stateMotor: Bool = false                    // состояние выкл/вкл
    var wheels: String = "Колёса не крутятся"       // колёса
    var brake: String = "Отжата педаль тормоза"     // тормоз
    var speed: UInt = 0                             // скорость текущая
    var speedMax: UInt = 320                        // скорость макс
    var onOff: Bool = false
    
    func statesMotor(onOff: Bool) {
        if onOff == false {
            stateMotor = true
        }
        if onOff == true {
            stateMotor = false
        }
//        return stateMotor
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
            print ("Скорость снижена на 20 км/ч")
        case 1...19:
            print ("Авто остановилось")
        default:
            print ("Авто стоит")
        }
    }
}

class Display {
    //    code classa
    
    func view( carModel: String,  stateMotor: Bool, speed: UInt) {
        print ("Автомобиль \(carModel)\n" +
        "Мотор \(stateMotor)\n" +
        "Скорость  \(speed)")
    }
}

var car = Car()
car.viewDisplay()
car.motorStart()
car.setSpeed(speedCurr: 60)
//car.pressBrake()
car.viewDisplay()
