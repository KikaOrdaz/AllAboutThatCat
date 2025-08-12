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
//        print("Valid data!")
        return try decoder.decode([CatBreed].self, from: data)
    } catch {
        throw CatError.invalidData
    }
}

func getCat(id : String) async throws -> Cat {
    let endpoint = "https://api.thecatapi.com/v1/images/"+id
//    let endpoint = "https://api.thecatapi.com/v1/breeds"
//    let endpoint = "https://api.thecatapi.com/v1/images/search?limit=10&has_breeds=1&api_key=live_V7RsXgaokK9aNJkKGgzEZPXce13ndDAgskGoJkJG0vdcCwVII2sjz5HmQLHA3x3X"
    
    
    if(id == ""){
        return Cat(id: "", url: "", width: 0, height: 0, breeds: [])
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

func getAllCats(catBreeds : [CatBreed], favCats : [FavouriteCat]) async throws -> [Cat]{
    var cats : [Cat] = []
    
    if(!catBreeds.isEmpty){
        for breed in catBreeds{
            do {
    //            print("https://api.thecatapi.com/v1/images/"+(breed.referenceImageId ?? ""))
                cats.append(try await getCat(id: breed.referenceImageId ?? ""))
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
    } else {
        for fav in favCats{
            do {
    //            print("https://api.thecatapi.com/v1/images/"+(breed.referenceImageId ?? ""))
                cats.append(try await getCat(id: fav.imageId))
            } catch CatError.invalidURL {
                print("favCats : Invalid URL")
            } catch CatError.invalidResponse {
                print("favCats : Invalid response")
            } catch CatError.invalidData {
                print("favCats : Invalid data")
            } catch {
                print("Unexpected error")
            }
        }
    }
    
    return cats
}

func getFavCatBreeds() async throws -> [FavouriteCat] {
    let endpoint = "http://api.thecatapi.com/v1/favourites?api_key=live_V7RsXgaokK9aNJkKGgzEZPXce13ndDAgskGoJkJG0vdcCwVII2sjz5HmQLHA3x3X"
    
    
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
//        print("Valid data!")
        return try decoder.decode([FavouriteCat].self, from: data)
    } catch {
        throw CatError.invalidData
    }
}

// {
//"image_id":asf2,
//"sub_id": "my-user-1234"
//}

func postFavourite(id : String) async throws {
    
    let endpoint = "http://api.thecatapi.com/v1/favourites?api_key=live_V7RsXgaokK9aNJkKGgzEZPXce13ndDAgskGoJkJG0vdcCwVII2sjz5HmQLHA3x3X"
    
    let message = "{\"image_id\":\(id)\"sub_id\": \"\"}"
    
    guard let url = URL(string: endpoint) else {
        throw CatError.invalidURL
    }
    
    var request = URLRequest(url: url)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "POST"
    let encoder = JSONEncoder()
    let data = try encoder.encode(message)
    request.httpBody = data

    let (responseData, response) = try await URLSession.shared.upload(for: request, from: data)
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
