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
    
    // Optional URLs
    let cfaUrl: String?
    let vetstreetUrl: String?
    let vcahospitalsUrl: String?
    let wikipediaUrl: String?
    
    // Optional alternative names
    let altNames: String?
    
    // Characteristics
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
    
    // Image reference
    let referenceImageId: String?
}

//struct Breed : Codable, Identifiable {
//    let weight : Weight
//    let id : String
//    let name : String
//    let cfaUrl : String
//    let vetstreetUrl : String
//    let temperament : String
//    let origin : String
//    let countryCodes : String
//    let countryCode : String
//    let description : String
//    let lifeSpan : String
//    let indoor : Int
//    let lap : Int
//    let adaptability : Int
//    let affectionLevel : Int
//    let childFriendly : Int
//    let catFriendly : Int
//    let dogFriendly : Int
//    let energyLevel : Int
//    let grooming : Int
//    let healthIssues : Int
//    let intelligence : Int
//    let sheddingLevel : Int
//    let socialNeeds : Int
//    let strangerFriendly : Int
//    let vocalisation : Int
//    let bidability : Int
//    let experimental : Int
//    let hairless : Int
//    let natural : Int
//    let rare : Int
//    let rex : Int
//    let suppressedTail : Int
//    let shortLegs : Int
//    let wikipediaUrl : String
//    let hypoallergenic : Int
//    let referenceImageId : String
//}
//
struct Cat : Codable, Identifiable {
    let id : String
    let url :  String
    let width : CGFloat
    let height : CGFloat
    let breeds : [CatBreed]
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

//let mockCats: [Cat] = [
//    Cat(
//        // Abyssinian
//        breeds: [Breed(
//            weight: Weight(imperial: "7  -  10", metric: "3 - 5"),
//            id: "abys",
//            name: "Abyssinian",
//            cfaUrl: "http://cfa.org/Breeds/BreedsAB/Abyssinian.aspx",
//            vetstreetUrl: "http://www.vetstreet.com/cats/abyssinian",
//            temperament: "Active, Energetic, Independent, Intelligent, Gentle",
//            origin: "Egypt",
//            countryCodes: "EG",
//            countryCode: "EG",
//            description: "The Abyssinian is easy to care for, and a joy to have in your home.",
//            lifeSpan: "14 - 15",
//            indoor: 0,
//            lap: 1,
//            adaptability: 5,
//            affectionLevel: 5,
//            childFriendly: 3,
//            catFriendly: 4,
//            dogFriendly: 4,
//            energyLevel: 5,
//            grooming: 1,
//            healthIssues: 2,
//            intelligence: 5,
//            sheddingLevel: 2,
//            socialNeeds: 5,
//            strangerFriendly: 5,
//            vocalisation: 1,
//            bidability: 0,
//            experimental: 0,
//            hairless: 0,
//            natural: 1,
//            rare: 0,
//            rex: 0,
//            suppressedTail: 0,
//            shortLegs: 0,
//            wikipediaUrl: "https://en.wikipedia.org/wiki/Abyssinian_(cat)",
//            hypoallergenic: 0,
//            referenceImageId: "0XYvRd7oD"
//        )],
//        id: "0XYvRd7oD",
//        url: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg",
//        width: 1204,
//        height: 1445
//    ),
//    Cat(
//        // Aegean
//        breeds: [Breed(
//            weight: Weight(imperial: "7 - 10", metric: "3 - 5"),
//            id: "aege",
//            name: "Aegean",
//            cfaUrl: "",
//            vetstreetUrl: "http://www.vetstreet.com/cats/aegean-cat",
//            temperament: "Affectionate, Social, Intelligent, Playful, Active",
//            origin: "Greece",
//            countryCodes: "GR",
//            countryCode: "GR",
//            description: "Native to the Greek islands known as the Cyclades in the Aegean Sea.",
//            lifeSpan: "9 - 12",
//            indoor: 0,
//            lap: 1,
//            adaptability: 4,
//            affectionLevel: 4,
//            childFriendly: 4,
//            catFriendly: 4,
//            dogFriendly: 4,
//            energyLevel: 3,
//            grooming: 3,
//            healthIssues: 1,
//            intelligence: 3,
//            sheddingLevel: 3,
//            socialNeeds: 4,
//            strangerFriendly: 4,
//            vocalisation: 3,
//            bidability: 0,
//            experimental: 0,
//            hairless: 0,
//            natural: 1,
//            rare: 0,
//            rex: 0,
//            suppressedTail: 0,
//            shortLegs: 0,
//            wikipediaUrl: "https://en.wikipedia.org/wiki/Aegean_cat",
//            hypoallergenic: 0,
//            referenceImageId: "ozEvzdVM-"
//        )],
//        id: "ozEvzdVM-",
//        url: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg",
//        width: 1200,
//        height: 800
//    ),
//    Cat(
//        // Bengal
//        breeds: [Breed(
//            weight: Weight(imperial: "7 - 10", metric: "3 - 5"),
//            id: "beng",
//            name: "Bengal",
//            cfaUrl: "http://cfa.org/Breeds/BreedsAB/Bengal.aspx",
//            vetstreetUrl: "http://www.vetstreet.com/cats/bengal",
//            temperament: "Alert, Agile, Energetic, Demanding, Intelligent",
//            origin: "United States",
//            countryCodes: "US",
//            countryCode: "US",
//            description: "Bengals are a lot of fun to live with, but they're definitely not the cat for everyone.",
//            lifeSpan: "12 - 16",
//            indoor: 0,
//            lap: 0,
//            adaptability: 5,
//            affectionLevel: 5,
//            childFriendly: 4,
//            catFriendly: 2,
//            dogFriendly: 4,
//            energyLevel: 5,
//            grooming: 1,
//            healthIssues: 3,
//            intelligence: 5,
//            sheddingLevel: 3,
//            socialNeeds: 5,
//            strangerFriendly: 3,
//            vocalisation: 5,
//            bidability: 0,
//            experimental: 0,
//            hairless: 0,
//            natural: 0,
//            rare: 0,
//            rex: 0,
//            suppressedTail: 0,
//            shortLegs: 0,
//            wikipediaUrl: "https://en.wikipedia.org/wiki/Bengal_(cat)",
//            hypoallergenic: 0,
//            referenceImageId: "O3btzLlsO"
//        )],
//        id: "O3btzLlsO",
//        url: "https://cdn2.thecatapi.com/images/O3btzLlsO.jpg",
//        width: 1600,
//        height: 1200
//    ),
//    Cat(
//        // Birman
//        breeds: [Breed(
//            weight: Weight(imperial: "8 - 15", metric: "4 - 7"),
//            id: "bir",
//            name: "Birman",
//            cfaUrl: "http://cfa.org/Breeds/BreedsAB/Birman.aspx",
//            vetstreetUrl: "http://www.vetstreet.com/cats/birman",
//            temperament: "Affectionate, Active, Gentle, Social",
//            origin: "France",
//            countryCodes: "FR",
//            countryCode: "FR",
//            description: "Birmans are loving and gentle cats that enjoy the company of their human companions.",
//            lifeSpan: "12 - 16",
//            indoor: 0,
//            lap: 1,
//            adaptability: 4,
//            affectionLevel: 5,
//            childFriendly: 4,
//            catFriendly: 5,
//            dogFriendly: 5,
//            energyLevel: 3,
//            grooming: 3,
//            healthIssues: 1,
//            intelligence: 3,
//            sheddingLevel: 2,
//            socialNeeds: 5,
//            strangerFriendly: 4,
//            vocalisation: 1,
//            bidability: 0,
//            experimental: 0,
//            hairless: 0,
//            natural: 0,
//            rare: 0,
//            rex: 0,
//            suppressedTail: 0,
//            shortLegs: 0,
//            wikipediaUrl: "https://en.wikipedia.org/wiki/Birman",
//            hypoallergenic: 0,
//            referenceImageId: "HOrX5gwLS"
//        )],
//        id: "HOrX5gwLS",
//        url: "https://cdn2.thecatapi.com/images/HOrX5gwLS.jpg",
//        width: 1600,
//        height: 1200
//    ),
//    Cat(
//        // Bombay
//        breeds: [Breed(
//            weight: Weight(imperial: "7 - 10", metric: "3 - 5"),
//            id: "bomb",
//            name: "Bombay",
//            cfaUrl: "http://cfa.org/Breeds/BreedsAB/Bombay.aspx",
//            vetstreetUrl: "http://www.vetstreet.com/cats/bombay",
//            temperament: "Affectionate, Dependent, Gentle, Intelligent, Playful",
//            origin: "United States",
//            countryCodes: "US",
//            countryCode: "US",
//            description: "Bombay cats are loving and playful companions.",
//            lifeSpan: "12 - 16",
//            indoor: 0,
//            lap: 1,
//            adaptability: 5,
//            affectionLevel: 5,
//            childFriendly: 3,
//            catFriendly: 3,
//            dogFriendly: 3,
//            energyLevel: 3,
//            grooming: 1,
//            healthIssues: 2,
//            intelligence: 3,
//            sheddingLevel: 2,
//            socialNeeds: 4,
//            strangerFriendly: 4,
//            vocalisation: 3,
//            bidability: 0,
//            experimental: 0,
//            hairless: 0,
//            natural: 0,
//            rare: 0,
//            rex: 0,
//            suppressedTail: 0,
//            shortLegs: 0,
//            wikipediaUrl: "https://en.wikipedia.org/wiki/Bombay_cat",
//            hypoallergenic: 0,
//            referenceImageId: "H1dGlxqNQ"
//        )],
//        id: "H1dGlxqNQ",
//        url: "https://cdn2.thecatapi.com/images/H1dGlxqNQ.jpg",
//        width: 1600,
//        height: 1200
//    )
//]


//[
//  {
//    "breeds": [
//      {
//        "weight": { "imperial": "6 - 12", "metric": "3 - 7" },
//        "id": "beng",
//        "name": "Bengal",
//        "cfa_url": "http://cfa.org/Breeds/BreedsAB/Bengal.aspx",
//        "vetstreet_url": "http://www.vetstreet.com/cats/bengal",
//        "vcahospitals_url": "https://vcahospitals.com/know-your-pet/cat-breeds/bengal",
//        "temperament": "Alert, Agile, Energetic, Demanding, Intelligent",
//        "origin": "United States",
//        "country_codes": "US",
//        "country_code": "US",
//        "description": "Bengals are a lot of fun to live with, but they're definitely not the cat for everyone, or for first-time cat owners. Extremely intelligent, curious and active, they demand a lot of interaction and woe betide the owner who doesn't provide it.",
//        "life_span": "12 - 15",
//        "indoor": 0,
//        "lap": 0,
//        "adaptability": 5,
//        "affection_level": 5,
//        "child_friendly": 4,
//        "cat_friendly": 4,
//        "dog_friendly": 5,
//        "energy_level": 5,
//        "grooming": 1,
//        "health_issues": 3,
//        "intelligence": 5,
//        "shedding_level": 3,
//        "social_needs": 5,
//        "stranger_friendly": 3,
//        "vocalisation": 5,
//        "bidability": 3,
//        "experimental": 0,
//        "hairless": 0,
//        "natural": 0,
//        "rare": 0,
//        "rex": 0,
//        "suppressed_tail": 0,
//        "short_legs": 0,
//        "wikipedia_url": "https://en.wikipedia.org/wiki/Bengal_(cat)",
//        "hypoallergenic": 1,
//        "reference_image_id": "O3btzLlsO"
//      }
//    ],
//    "id": "LSaDk6OjY",
//    "url": "https://cdn2.thecatapi.com/images/LSaDk6OjY.jpg",
//    "width": 1080,
//    "height": 1080
//  },
//  {
//    "breeds": [
//      {
//        "weight": { "imperial": "6 - 12", "metric": "3 - 7" },
//        "id": "beng",
//        "name": "Bengal",
//        "cfa_url": "http://cfa.org/Breeds/BreedsAB/Bengal.aspx",
//        "vetstreet_url": "http://www.vetstreet.com/cats/bengal",
//        "vcahospitals_url": "https://vcahospitals.com/know-your-pet/cat-breeds/bengal",
//        "temperament": "Alert, Agile, Energetic, Demanding, Intelligent",
//        "origin": "United States",
//        "country_codes": "US",
//        "country_code": "US",
//        "description": "Bengals are a lot of fun to live with, but they're definitely not the cat for everyone, or for first-time cat owners. Extremely intelligent, curious and active, they demand a lot of interaction and woe betide the owner who doesn't provide it.",
//        "life_span": "12 - 15",
//        "indoor": 0,
//        "lap": 0,
//        "adaptability": 5,
//        "affection_level": 5,
//        "child_friendly": 4,
//        "cat_friendly": 4,
//        "dog_friendly": 5,
//        "energy_level": 5,
//        "grooming": 1,
//        "health_issues": 3,
//        "intelligence": 5,
//        "shedding_level": 3,
//        "social_needs": 5,
//        "stranger_friendly": 3,
//        "vocalisation": 5,
//        "bidability": 3,
//        "experimental": 0,
//        "hairless": 0,
//        "natural": 0,
//        "rare": 0,
//        "rex": 0,
//        "suppressed_tail": 0,
//        "short_legs": 0,
//        "wikipedia_url": "https://en.wikipedia.org/wiki/Bengal_(cat)",
//        "hypoallergenic": 1,
//        "reference_image_id": "O3btzLlsO"
//      }
//    ],
//    "id": "IFXsxmXLm",
//    "url": "https://cdn2.thecatapi.com/images/IFXsxmXLm.jpg",
//    "width": 973,
//    "height": 973
//  },
//  {
//    "breeds": [
//      {
//        "weight": { "imperial": "6 - 12", "metric": "3 - 7" },
//        "id": "beng",
//        "name": "Bengal",
//        "cfa_url": "http://cfa.org/Breeds/BreedsAB/Bengal.aspx",
//        "vetstreet_url": "http://www.vetstreet.com/cats/bengal",
//        "vcahospitals_url": "https://vcahospitals.com/know-your-pet/cat-breeds/bengal",
//        "temperament": "Alert, Agile, Energetic, Demanding, Intelligent",
//        "origin": "United States",
//        "country_codes": "US",
//        "country_code": "US",
//        "description": "Bengals are a lot of fun to live with, but they're definitely not the cat for everyone, or for first-time cat owners. Extremely intelligent, curious and active, they demand a lot of interaction and woe betide the owner who doesn't provide it.",
//        "life_span": "12 - 15",
//        "indoor": 0,
//        "lap": 0,
//        "adaptability": 5,
//        "affection_level": 5,
//        "child_friendly": 4,
//        "cat_friendly": 4,
//        "dog_friendly": 5,
//        "energy_level": 5,
//        "grooming": 1,
//        "health_issues": 3,
//        "intelligence": 5,
//        "shedding_level": 3,
//        "social_needs": 5,
//        "stranger_friendly": 3,
//        "vocalisation": 5,
//        "bidability": 3,
//        "experimental": 0,
//        "hairless": 0,
//        "natural": 0,
//        "rare": 0,
//        "rex": 0,
//        "suppressed_tail": 0,
//        "short_legs": 0,
//        "wikipedia_url": "https://en.wikipedia.org/wiki/Bengal_(cat)",
//        "hypoallergenic": 1,
//        "reference_image_id": "O3btzLlsO"
//      }
//    ],
//    "id": "8ciqdpaO5",
//    "url": "https://cdn2.thecatapi.com/images/8ciqdpaO5.jpg",
//    "width": 1080,
//    "height": 809
//  }
//
//  // ... continued for the remaining 8 entries
//]
