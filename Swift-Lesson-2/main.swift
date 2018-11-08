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

var tractor = Traktor()
tractor.viewDisplay()
tractor.motorStart()
tractor.setSpeed(speedCurr: 40)
tractor.setSpeed(speedCurr: 80)
