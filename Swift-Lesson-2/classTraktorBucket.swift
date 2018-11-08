//
//  classTraktorBucket.swift
//  Swift-Lesson-2
//
//  Created by Alla on 11/8/18.
//  Copyright © 2018 Andrei Savchenko. All rights reserved.
//
//Inheritance:
//Створіть класс Трактор який наслідується від Автомобіль у якого є додаткове поле Ковш
//Ковш має бути окремим класом із методами вкл/викл і методи для керування ковшом (підняти, повернути, опустити)
//
//Polymorphism:
//Змінити методи вкл/викл у Трактора (цей метод наслідуєтбься від класу Автомобіль) щоб вони включали і виключали окрім Двигуна ще й Ковш
//
//Incapsulation:
//Захистіть поля і методи Двигуна так щоб користувач не знав нічого про Двигун якщо використовує класс Автомобіль

import Foundation

class TraktorBucket {
    private var stateBucket: Bool = false
    
    init(stateBucket: Bool = false) {
        self.stateBucket = stateBucket
    }
    
    func bucketOn() {
        if stateBucket {
            print("Ковш уже включен")
        }
        if !stateBucket {
            stateBucket = true
            print("Ковш влючен")
        }
    }
    
    func bucketOff() {
        if !stateBucket {
            print("Ковш уже выключен")
        }
        if stateBucket {
            stateBucket = false
            print("Ковш выключен")
        }
    }
    
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    func bucketControl(direct: Direction) {
        switch direct {
        case . left:
            print("Ковш повернули налево")
        case . right:
            print("Ковш повернули направо")
        case .up:
            print("Ковш поднят вверх")
        case .down:
            print("Ковш опущен вниз")
        }
    }
}
