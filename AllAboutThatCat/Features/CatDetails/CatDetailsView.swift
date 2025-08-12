//
//  CatDetailsView.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 11/08/2025.
//


import Foundation
import SwiftUI

struct CatDetailsView : View {
    let cat : Cat
    
    var breed: CatBreed? {
        cat.breeds.first
    }

    
    struct Detail : View {
        let detailTitle : String
        let content : String
        let unity : String
        
        var body: some View {
            HStack(alignment: .top){
                Text(detailTitle)
                    .bold()
                Text("\(content)\(unity) ")
            }
        }
    }
    
    struct SecondaryDetail : View {
        let detailTitle : String
        let level : Int
        
        var levelWritten : String?{
            String(level)
        }
        
        var body: some View{
            HStack(){
                Text(detailTitle).bold()

                ForEach(1 ..< 6){ index in
                    if index <= level {
                        Text(Image(systemName: "circle.fill"))
                    } else {
                        Text(Image(systemName: "circle"))
                    }
                }
            }
        }
    }
    
    var body: some View {
        ScrollView {
            Image(systemName: "heart")
                .frame(width: 50, height: 50, alignment: .trailing)
//                .onTapGesture(perform: async throws -> () {
//                   try await postFavourite(id: cat.id)
//                })
            CatImageView(cat: cat, frameSize: 300)
        
            Text(breed?.description ?? "")
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                
            Text("Main Details").bold()
            
            
            
            VStack(alignment: .leading){
                Detail(detailTitle: "Temperament: ", content: breed?.temperament ?? "", unity : "")
                Detail(detailTitle: "Life Span: ", content: (breed?.lifeSpan ?? ""), unity: " years")
                Text("Weight: ").bold()
                Detail(detailTitle: "", content: (breed?.weight.imperial ?? ""), unity: " lb")
                Detail(detailTitle: "", content: (breed?.weight.metric ?? ""), unity: " kg")
                Detail(detailTitle: "Origin: ", content: breed?.origin ?? "", unity : "")
            }
            .padding(.vertical, 3)
            
            Text("Secondary Details")
                .bold()

            VStack(alignment: .leading){
                SecondaryDetail(detailTitle: "Adaptability: ", level: breed?.adaptability ?? 0)
                SecondaryDetail(detailTitle: "Affection Level: ", level: breed?.affectionLevel ?? 0)
                SecondaryDetail(detailTitle: "Child Friendliness: ", level: breed?.childFriendly ?? 0)
                SecondaryDetail(detailTitle: "Dog Friendliness: ", level: breed?.dogFriendly ?? 0)
                SecondaryDetail(detailTitle: "Energy Level: ", level: breed?.energyLevel ?? 0)
                SecondaryDetail(detailTitle: "Grooming: ", level: breed?.grooming ?? 0)
                SecondaryDetail(detailTitle: "Health Issues: ", level: breed?.healthIssues ?? 0)
                SecondaryDetail(detailTitle: "Shedding Level: ", level: breed?.sheddingLevel ?? 0)
                SecondaryDetail(detailTitle: "Social Needs: ", level: breed?.socialNeeds ?? 0)
                SecondaryDetail(detailTitle: "Stranger Friendliness: ", level: breed?.strangerFriendly ?? 0)
                SecondaryDetail(detailTitle: "Vocalisation: ", level: breed?.vocalisation ?? 0)
                SecondaryDetail(detailTitle: "Shedding Level: ", level: breed?.sheddingLevel ?? 0)
            }
            .padding(.vertical, 3)


            
        }
        .padding(.horizontal, 3)
        .navigationTitle(cat.breeds.first?.name ?? "Cat")
        .navigationBarTitleDisplayMode(.inline)
    }
}
