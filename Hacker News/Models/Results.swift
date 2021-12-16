//
//  Results.swift
//  Hacker News
//
//  Created by Waqar naeem on 17/11/2021.
//

import Foundation

struct Results: Decodable {
    let hits : [Post]
}

struct Post: Decodable, Identifiable {
    var id : String{
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
