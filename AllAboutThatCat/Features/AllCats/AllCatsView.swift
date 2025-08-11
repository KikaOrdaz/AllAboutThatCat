//
//  AllCatsView.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 07/08/2025.
//

import Foundation
import SwiftUI

struct AllCatsView : View {
    
    @State private var catBreeds: [CatBreed]?
    @State private var cats: [Cat]?
    
    private let emptyCat: Cat = Cat(id: "", url: "", width: 1, height: 1, breeds: [])
    

    var body: some View {
        ScrollView{
            ForEach(cats ?? [emptyCat]){ cat in
                
                Grid{
                    
                    Text(cat.breeds.first?.name ?? "")
                    
                    AsyncImage(url: URL(string: cat.url)){ image in
                        image
                            .resizable()
                            .frame(width: cat.width * 0.25, height: cat.height * 0.25)
                    } placeholder: {
                        
                    }
                    
                }
               
            }
                
            
        }
        .task {
            do {
                catBreeds = try await getCatBreeds()
                
                if let breeds = catBreeds {
                            cats = try await getAllCats(catBreeds: breeds)
                        }
                
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

