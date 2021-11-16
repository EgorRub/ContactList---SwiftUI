//
//  NumberList.swift
//  ContactList - SwiftUI
//
//  Created by Егор on 15.11.2021.
//

import SwiftUI


struct NumberList: View {
    
    let contactList: [Person]
    
    var body: some View {
        List {
            ForEach(contactList) { contact in
                Section(header: Text(contact.title).font(.headline)) {
                    Label(contact.phone, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
                .textCase(.none) // Чтобы Имена были ине капсом
            }
        }
        .navigationTitle("Contact List")
    }
}

struct NumberList_Previews: PreviewProvider {
    static var previews: some View {
        NumberList(contactList: Person.getPersonList())
    }
}
