//
//  Model.swift
//  ContactList - SwiftUI
//
//  Created by Егор on 15.11.2021.
//

import Foundation


struct Person: Identifiable {

    let id: String
    let surname: String
    let phone: String
    let email: String
    
    var title: String {
        "\(id) \(surname)"
    }
    
    static func getPersonList() -> [Person] {
        
        var list: [Person] = []
        
        let shuffledNames = DataManager.shared.names.shuffled()
        let shuffledSurnames = DataManager.shared.surnames.shuffled()
        let shuffledPhones = DataManager.shared.phones.shuffled()
        let shuffledEmals = DataManager.shared.emails.shuffled()

        let iterationCount = min(shuffledNames.count, shuffledSurnames.count, shuffledPhones.count, shuffledEmals.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                id: shuffledNames[index],
                surname: shuffledSurnames[index],
                phone: shuffledPhones[index],
                email: shuffledEmals[index]
            )
            list.append(person)
        }
        return list
    }
    
    static func getOnePerson() -> Person {
        
        let oneName = DataManager.shared.names.first ?? ""
        let oneSurname =  DataManager.shared.surnames.first ?? ""
        let onePhone =  DataManager.shared.phones.first ?? ""
        let oneEmail =  DataManager.shared.emails.first ?? ""
        
        return Person(id: oneName, surname: oneSurname, phone: onePhone, email: oneEmail)
    }
}
