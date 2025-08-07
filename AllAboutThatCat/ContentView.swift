//
//  ContentView.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 05/08/2025.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        //        VStack {
        //            Image(systemName: "globe")
        //                .imageScale(.large)
        //                .foregroundStyle(.tint)
        //            Text("Hello!")
        //        }
        //        .padding()
        TabView {
            Tab("All Cats", systemImage: "cat") {
                //                ReceivedView()
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
