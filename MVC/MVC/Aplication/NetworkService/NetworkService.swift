//
//  NetworkService.swift
//  MVC
//
//  Created by Alex Skigenok on 22.11.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import Foundation


class NetworkService {
    
    // Singlton patern
    private init () {}
    static let shared = NetworkService()
    
    public func getData (url: URL, completion: @escaping (Any) -> ()){
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
