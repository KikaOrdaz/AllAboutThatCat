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
    
    let columns = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16)
        ]

    var body: some View {
        ScrollView{
                LazyVGrid(columns: columns, spacing: 16){
                    ForEach(cats ?? [emptyCat]){ cat in
                        VStack{
                            CatImageView(cat: cat)
                            Text(cat.breeds.first?.name ?? "")
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(.systemBackground))
                                .shadow(radius: 5)
                        )
                        .padding(.horizontal)
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

