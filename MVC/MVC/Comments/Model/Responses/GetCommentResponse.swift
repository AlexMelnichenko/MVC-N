//
//  GetCommentResponse.swift
//  MVC
//
//  Created by Alex Skigenok on 22.11.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    var comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [[String: AnyObject]] else {throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else {continue}
            comments.append(comment)
        }
        self.comments = comments
    }
}
