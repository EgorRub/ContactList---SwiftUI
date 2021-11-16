//
//  PersonInformation.swift
//  ContactList - SwiftUI
//
//  Created by Егор on 15.11.2021.
//

import SwiftUI

struct PersonInformation: View {
    
    let contact: Person
    
    var body: some View {
            
        List {
            HStack {
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
                }
                Label(contact.phone, systemImage: "phone")
                Label(contact.email, systemImage: "tray")
        }
        .navigationTitle(contact.title)
    }
}

struct PersonInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonInformation(contact: Person.getPersonList().first!)
    }
}
