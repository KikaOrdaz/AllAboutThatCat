//
//  Cats.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 07/08/2025.
//
//[
//{"id":"2gv","url":"https://cdn2.thecatapi.com/images/2gv.jpg","width":500,"height":333},
//{"id":"54i","url":"https://cdn2.thecatapi.com/images/54i.jpg","width":500,"height":667},
//{"id":"5k1","url":"https://cdn2.thecatapi.com/images/5k1.jpg","width":500,"height":333},
//{"id":"bv6","url":"https://cdn2.thecatapi.com/images/bv6.jpg","width":500,"height":334},
//{"id":"cvf","url":"https://cdn2.thecatapi.com/images/cvf.jpg","width":720,"height":482},
//{"id":"djl","url":"https://cdn2.thecatapi.com/images/djl.jpg","width":500,"height":351},
//{"id":"e7e","url":"https://cdn2.thecatapi.com/images/e7e.jpg","width":500,"height":375},
//{"id":"e8i","url":"https://cdn2.thecatapi.com/images/e8i.jpg","width":839,"height":692},
//{"id":"7399W9mut","url":"https://cdn2.thecatapi.com/images/7399W9mut.jpg","width":960,"height":960},
//{"id":"HW1MGAuGL","url":"https://cdn2.thecatapi.com/images/HW1MGAuGL.jpg","width":1600,"height":1200}]


// API key: live_V7RsXgaokK9aNJkKGgzEZPXce13ndDAgskGoJkJG0vdcCwVII2sjz5HmQLHA3x3X

import Foundation

struct Cat : Codable {
    let id : String
    let url :  String
    let width : Int
    let height : Int
}

struct AllCats : Codable {
    let cats : [Cat]
}

func getCat() async throws -> Cat {
    let endpoint = "https://api.thecatapi.com/v1/images/search?limit=10&breed_ids=beng&api_key=live_V7RsXgaokK9aNJkKGgzEZPXce13ndDAgskGoJkJG0vdcCwVII2sjz5HmQLHA3x3X"
    guard let url = URL(string:  endpoint) else {
        throw CatError.invalidURL
    }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        throw CatError.invalidResponse
    }
    
    do {
        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(Cat.self, from: data)
    } catch {
        throw CatError.invalidData
    }
}

enum CatError : Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
