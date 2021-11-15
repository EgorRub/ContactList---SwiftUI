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
                    .frame(width: 120, height: 120)
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
        PersonInformation(contact: Person.getOnePerson())
    }
}
