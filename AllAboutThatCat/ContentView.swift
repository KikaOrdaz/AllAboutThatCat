//
//  ContentView.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 05/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var catBreeds: [CatBreed] = []
    @State private var cats: [Cat] = []
    @State private var favCatsBreeds: [FavouriteCat] = []
    @State private var favCats: [Cat] = []
    
    let allCatsTitle : String = "All Cats"
    let favouritesTitle : String = "Favourites"

    var body: some View {
    
        TabView {
            Tab(allCatsTitle, systemImage: "cat") {
                AllCatsView(cats: cats, navigationTitle: allCatsTitle)
            }
            
            
            Tab(favouritesTitle, systemImage: "heart") {
                AllCatsView(cats: favCats, navigationTitle: favouritesTitle)
            }
        }
        .task {
            do {
                catBreeds = try await getCatBreeds()
                cats = try await getAllCats(catBreeds: catBreeds, favCats: [])
                favCatsBreeds = try await getFavCatBreeds()
                favCats = try await getAllCats(catBreeds: [], favCats: favCatsBreeds)
            } catch CatError.invalidURL {
                print("Invalid URL")
            } catch CatError.invalidResponse {
                print("Invalid response")
            } catch CatError.invalidData {
                print("Invalid data")
            } catch {
                print("Unexpected error")
            }
        }
    }
}

#Preview {
    ContentView()
}
