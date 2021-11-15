//
//  DataManager.swift
//  ContactList - SwiftUI
//
//  Created by Егор on 15.11.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = ["Evgenii", "Andrey", "Igor", "Oleg"]
    let surnames = ["Belousov", "Gregoriev", "Razumovsky", "Zaikin"]
    let phones = ["451435235", "451435132", "2344345", "09865451"]
    let emails = ["haefjbv@mail.ru", "fahsdgfja@yandex.ru", "shabksf@swiftbook.ru", "sdhjfbsj@google.com"]
   
    // Создаем к  static let shared = DataManager(), чтобы нельзя было обраиться к экхемпляру класса тк он статичный
    private init (){}
}
