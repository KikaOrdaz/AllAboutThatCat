//
//  ContentView.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 05/08/2025.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
    
        TabView {
            Tab("All Cats", systemImage: "cat") {
                AllCatsView()
            }
            
            
            Tab("Favourites", systemImage: "heart") {
                //                SentView()
            }
        }
    }
}

#Preview {
    ContentView()
}
