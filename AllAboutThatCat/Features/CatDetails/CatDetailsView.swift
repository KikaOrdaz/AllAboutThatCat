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
    
    var body: some View {
        VStack {
            CatImageView(cat: cat, frameSize: 300)
        }
    }
}
