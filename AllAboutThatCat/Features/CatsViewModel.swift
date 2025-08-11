//
//  Cats.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 07/08/2025.
//


// API key: live_V7RsXgaokK9aNJkKGgzEZPXce13ndDAgskGoJkJG0vdcCwVII2sjz5HmQLHA3x3X

import Foundation
import SwiftUICore


func getCatBreeds() async throws -> [CatBreed] {
//    let endpoint = "https://api.thecatapi.com/v1/images/search"
    let endpoint = "https://api.thecatapi.com/v1/breeds"
//    let endpoint = "https://api.thecatapi.com/v1/images/search?limit=10&has_breeds=1&api_key=live_V7RsXgaokK9aNJkKGgzEZPXce13ndDAgskGoJkJG0vdcCwVII2sjz5HmQLHA3x3X"
    
    guard let url = URL(string:  endpoint) else {
        throw CatError.invalidURL
    }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        throw CatError.invalidResponse
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        print("Valid data!")
        return try decoder.decode([CatBreed].self, from: data)
    } catch {
        throw CatError.invalidData
    }
}

func getCat(id : String, catBreed : CatBreed) async throws -> Cat {
    let endpoint = "https://api.thecatapi.com/v1/images/"+id
//    let endpoint = "https://api.thecatapi.com/v1/breeds"
//    let endpoint = "https://api.thecatapi.com/v1/images/search?limit=10&has_breeds=1&api_key=live_V7RsXgaokK9aNJkKGgzEZPXce13ndDAgskGoJkJG0vdcCwVII2sjz5HmQLHA3x3X"
    
    
    if(id == ""){
        return Cat(id: "", url: "", width: 0, height: 0, breeds: [catBreed])
    }
    
    guard let url = URL(string:  endpoint) else {
        throw CatError.invalidURL
    }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        throw CatError.invalidResponse
    }
    
    do {
//        if let jsonString = String(data: data, encoding: .utf8) {
//            print("Raw JSON: \(jsonString)")
//        }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        print("Valid data!")
        return try decoder.decode(Cat.self, from: data)
    } catch {
        throw CatError.invalidData
    }
}

func getAllCats(catBreeds : [CatBreed]) async throws -> [Cat]{
    var cats : [Cat] = []
    
    
    for breed in catBreeds{
        do {
//            print("https://api.thecatapi.com/v1/images/"+(breed.referenceImageId ?? ""))
            cats.append(try await getCat(id: breed.referenceImageId ?? "", catBreed: breed))
        } catch CatError.invalidURL {
            print("getAllCats : Invalid URL")
        } catch CatError.invalidResponse {
            print("getAllCats : Invalid response")
        } catch CatError.invalidData {
            print("getAllCats : Invalid data")
        } catch {
            print("Unexpected error")
        }
    }
    
    return cats
}

func getSingleCat(cats : [Cat], id: String, catBreed : CatBreed) -> Cat{
    for cat in cats{
        if cat.id == id{
            return cat
        }
    }
    return Cat(id: "", url: "", width: 0, height: 0, breeds: [catBreed])
}



enum CatError : Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
