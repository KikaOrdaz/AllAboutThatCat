//
//  CatsModel.swift
//  AllAboutThatCat
//
//  Created by Kika Ordaz on 11/08/2025.
//

import Foundation


struct CatBreed: Codable, Identifiable {
    struct Weight: Codable {
        let imperial: String
        let metric: String
    }

    let id: String
    let name: String
    let weight: Weight
    let origin: String
    let countryCodes: String
    let countryCode: String
    let description: String
    let temperament: String
    let lifeSpan: String
    
    
    let cfaUrl: String?
    let vetstreetUrl: String?
    let vcahospitalsUrl: String?
    let wikipediaUrl: String?
    
    
    let altNames: String?
    
    
    let adaptability: Int?
    let affectionLevel: Int?
    let childFriendly: Int?
    let dogFriendly: Int?
    let energyLevel: Int?
    let grooming: Int?
    let healthIssues: Int?
    let intelligence: Int?
    let sheddingLevel: Int?
    let socialNeeds: Int?
    let strangerFriendly: Int?
    let vocalisation: Int?
    let experimental: Int?
    let hairless: Int?
    let natural: Int?
    let rare: Int?
    let rex: Int?
    let suppressedTail: Int?
    let shortLegs: Int?
    let hypoallergenic: Int?
    
    
    let referenceImageId: String?
}


struct Cat : Codable, Identifiable {
    let id : String
    let url :  String
    let width : CGFloat
    let height : CGFloat
    let breeds : [CatBreed]
}

//[
//  {
//    "id": 232413577,
//    "user_id": "1ejqec",
//    "image_id": "asf2",
//    "sub_id": "my-user-1234",
//    "created_at": "2023-10-28T17:39:28.000Z",
//    "image": {}
//  }
//]

struct FavouriteCat : Codable, Identifiable {
    let id : String
    let userId : String
    let imageId : String
    let subId : String
    let createdat : String
}

let mockCatBreeds: [CatBreed] = [
    CatBreed(
        id: "abys",
        name: "Abyssinian",
        weight: CatBreed.Weight(imperial: "7 - 10", metric: "3 - 5"),
        origin: "Egypt",
        countryCodes: "EG",
        countryCode: "EG",
        description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
        temperament: "Active, Energetic, Independent, Intelligent, Gentle",
        lifeSpan: "14 - 15",
        cfaUrl: "http://cfa.org/Breeds/BreedsAB/Abyssinian.aspx",
        vetstreetUrl: "http://www.vetstreet.com/cats/abyssinian",
        vcahospitalsUrl: "https://vcahospitals.com/know-your-pet/cat-breeds/abyssinian",
        wikipediaUrl: "https://en.wikipedia.org/wiki/Abyssinian_(cat)",
        altNames: "",
        adaptability: 5,
        affectionLevel: 5,
        childFriendly: 3,
        dogFriendly: 4,
        energyLevel: 5,
        grooming: 1,
        healthIssues: 2,
        intelligence: 5,
        sheddingLevel: 2,
        socialNeeds: 5,
        strangerFriendly: 5,
        vocalisation: 1,
        experimental: 0,
        hairless: 0,
        natural: 1,
        rare: 0,
        rex: 0,
        suppressedTail: 0,
        shortLegs: 0,
        hypoallergenic: 0,
        referenceImageId: "0XYvRd7oD"
    ),
    CatBreed(
        id: "aege",
        name: "Aegean",
        weight: CatBreed.Weight(imperial: "7 - 10", metric: "3 - 5"),
        origin: "Greece",
        countryCodes: "GR",
        countryCode: "GR",
        description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding.",
        temperament: "Affectionate, Social, Intelligent, Playful, Active",
        lifeSpan: "9 - 12",
        cfaUrl: nil,
        vetstreetUrl: "http://www.vetstreet.com/cats/aegean-cat",
        vcahospitalsUrl: nil,
        wikipediaUrl: "https://en.wikipedia.org/wiki/Aegean_cat",
        altNames: "",
        adaptability: 5,
        affectionLevel: 4,
        childFriendly: 4,
        dogFriendly: 4,
        energyLevel: 3,
        grooming: 3,
        healthIssues: 1,
        intelligence: 3,
        sheddingLevel: 3,
        socialNeeds: 4,
        strangerFriendly: 4,
        vocalisation: 3,
        experimental: 0,
        hairless: 0,
        natural: 0,
        rare: 0,
        rex: 0,
        suppressedTail: 0,
        shortLegs: 0,
        hypoallergenic: 0,
        referenceImageId: "ozEvzdVM-"
    ),
    CatBreed(
        id: "abob",
        name: "American Bobtail",
        weight: CatBreed.Weight(imperial: "7 - 16", metric: "3 - 7"),
        origin: "United States",
        countryCodes: "US",
        countryCode: "US",
        description: "American Bobtails are loving and incredibly intelligent cats possessing a distinctive wild appearance. They are extremely interactive cats that bond with their human family with great devotion.",
        temperament: "Intelligent, Interactive, Lively, Playful, Sensitive",
        lifeSpan: "11 - 15",
        cfaUrl: "http://cfa.org/Breeds/BreedsAB/AmericanBobtail.aspx",
        vetstreetUrl: "http://www.vetstreet.com/cats/american-bobtail",
        vcahospitalsUrl: "https://vcahospitals.com/know-your-pet/cat-breeds/american-bobtail",
        wikipediaUrl: "https://en.wikipedia.org/wiki/American_Bobtail",
        altNames: "",
        adaptability: 5,
        affectionLevel: 5,
        childFriendly: 4,
        dogFriendly: 5,
        energyLevel: 3,
        grooming: 1,
        healthIssues: 1,
        intelligence: 5,
        sheddingLevel: 3,
        socialNeeds: 3,
        strangerFriendly: 3,
        vocalisation: 3,
        experimental: 0,
        hairless: 0,
        natural: 0,
        rare: 0,
        rex: 0,
        suppressedTail: 1,
        shortLegs: 0,
        hypoallergenic: 0,
        referenceImageId: "hBXicehMA"
    ),
    CatBreed(
        id: "acur",
        name: "American Curl",
        weight: CatBreed.Weight(imperial: "5 - 10", metric: "2 - 5"),
        origin: "United States",
        countryCodes: "US",
        countryCode: "US",
        description: "Distinguished by truly unique ears that curl back in a graceful arc, offering an alert, perky, happily surprised expression.",
        temperament: "Affectionate, Curious, Intelligent, Interactive, Lively, Playful, Social",
        lifeSpan: "12 - 16",
        cfaUrl: "http://cfa.org/Breeds/BreedsAB/AmericanCurl.aspx",
        vetstreetUrl: "http://www.vetstreet.com/cats/american-curl",
        vcahospitalsUrl: "https://vcahospitals.com/know-your-pet/cat-breeds/american-curl",
        wikipediaUrl: "https://en.wikipedia.org/wiki/American_Curl",
        altNames: "",
        adaptability: 5,
        affectionLevel: 5,
        childFriendly: 4,
        dogFriendly: 5,
        energyLevel: 3,
        grooming: 2,
        healthIssues: 1,
        intelligence: 3,
        sheddingLevel: 3,
        socialNeeds: 3,
        strangerFriendly: 3,
        vocalisation: 3,
        experimental: 0,
        hairless: 0,
        natural: 0,
        rare: 0,
        rex: 0,
        suppressedTail: 0,
        shortLegs: 0,
        hypoallergenic: 0,
        referenceImageId: "xnsqonbjW"
    ),
    CatBreed(
        id: "asho",
        name: "American Shorthair",
        weight: CatBreed.Weight(imperial: "8 - 15", metric: "4 - 7"),
        origin: "United States",
        countryCodes: "US",
        countryCode: "US",
        description: "The American Shorthair is known for its longevity, robust health, good looks, sweet personality, and amiability with children, dogs, and other pets.",
        temperament: "Active, Curious, Easy Going, Playful, Calm",
        lifeSpan: "15 - 17",
        cfaUrl: "http://cfa.org/Breeds/BreedsAB/AmericanShorthair.aspx",
        vetstreetUrl: "http://www.vetstreet.com/cats/american-shorthair",
        vcahospitalsUrl: "https://vcahospitals.com/know-your-pet/cat-breeds/american-shorthair",
        wikipediaUrl: "https://en.wikipedia.org/wiki/American_Shorthair",
        altNames: "Domestic Shorthair",
        adaptability: 5,
        affectionLevel: 5,
        childFriendly: 4,
        dogFriendly: 5,
        energyLevel: 3,
        grooming: 1,
        healthIssues: 3,
        intelligence: 3,
        sheddingLevel: 3,
        socialNeeds: 4,
        strangerFriendly: 3,
        vocalisation: 3,
        experimental: 0,
        hairless: 0,
        natural: 1,
        rare: 0,
        rex: 0,
        suppressedTail: 0,
        shortLegs: 0,
        hypoallergenic: 0,
        referenceImageId: "JFPROfGtQ"
    )
]
