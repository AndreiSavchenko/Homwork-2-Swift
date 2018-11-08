//
//  classTraktor.swift
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

class Traktor: Car {
    var bucket = TraktorBucket()
    var modelTraktor: String = "T-800"
    var speedMaxTrak: UInt = 60
    
    override init(_ modelTraktor: String = "T-800"
//                  _ speedMaxTrak: UInt = 60
        ) {
        self.modelTraktor = modelTraktor
        super.init(self.modelTraktor)
//        self.speedMaxTrak = speedMaxTrak
    }
}
