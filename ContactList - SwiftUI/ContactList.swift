//
//  ContactList.swift
//  ContactList - SwiftUI
//
//  Created by Егор on 15.11.2021.
//

import SwiftUI

struct ContactList: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
                List(contactList) { contact in
                    NavigationLink(contact.title) {
                        PersonInformation(contact: contact)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contactList: Person.getPersonList())
    }
}
