//
//  CommentNetworkService.swift
//  MVC
//
//  Created by Alex Skigenok on 22.11.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import Foundation


class CommentNetworService {
    private init () {}
    
    static func getComments(completion: @escaping (GetCommentResponse) -> ()){
        guard let url = URL (string: "http://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do{
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
