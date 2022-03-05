//
//  ContentView.swift
//  Finance Tracker
//
//  Created by Arun Mohan on 02/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            Text("Add New Transaction")
                .tabItem {
                    Text("New")
                    Image(systemName: "plus")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
