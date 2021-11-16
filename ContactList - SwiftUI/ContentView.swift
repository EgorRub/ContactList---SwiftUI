//
//  ContentView.swift
//  ContactList - SwiftUI
//
//  Created by Егор on 15.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    let contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactList(contactList: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumberList(contactList: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
