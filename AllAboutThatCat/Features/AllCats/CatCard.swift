//
//  CatCard.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 12/08/2025.
//

import SwiftUICore


 struct CatCard : View {
        let cat : Cat
        var body: some View {
            VStack{
                CatImageView(cat: cat, frameSize: 100)
                Text(cat.breeds.first?.name ?? "")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(.systemBackground))
                    .shadow(radius: 5)
            )
            .padding(.horizontal, 5)
        }
    }
