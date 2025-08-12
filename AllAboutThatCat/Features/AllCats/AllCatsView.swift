//
//  AllCatsView.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 07/08/2025.
//

import Foundation
import SwiftUI

struct AllCatsView : View {
    
    let cats : [Cat]
    let navigationTitle : String
    
    
    let columns = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16)
        ]
    
   

    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns, spacing: 16) {
//                    let data = cats ?? []
                    ForEach(cats) { cat in
                        NavigationLink {
                            CatDetailsView(cat: cat)
                        } label: {
                            CatCard(cat: cat)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .navigationTitle(navigationTitle)
        }
        
    }
}

