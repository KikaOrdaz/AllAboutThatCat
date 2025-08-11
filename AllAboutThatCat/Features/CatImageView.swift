//
//  CatImage.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 11/08/2025.
//

import SwiftUI

struct CatImageView : View {
    let cat: Cat
    let frameSize : CGFloat
    
    var body: some View {
        AsyncImage(url: URL(string: cat.url)){ image in
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxWidth : frameSize, maxHeight: frameSize)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                    } placeholder: {
                                        ProgressView()
                                                    .frame(width: frameSize, height: frameSize)
                                    }
    }
}



