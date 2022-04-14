//
//  APIService.swift
//  UPAX
//
//  Created by Mariano Manuel on 4/9/22.
//

import Foundation


class APIService {
    var apiURL = "https://us-central1-bibliotecadecontenido.cloudfunctions.net/helloWorld"
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    var dataTask2: URLSessionDataTask?
                
    func fetchColors(completion: @escaping ([Any]?) -> Void) {
        dataTask?.cancel()
        guard let url = URL(string: apiURL) else { return }
        
        dataTask = defaultSession.dataTask(with: url, completionHandler: { data, response, error in
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                var response: [String: Any]?
                do {
                    response = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                } catch _ as NSError { return }
                guard let array = response!["colors"] as? [Any] else { return }
                DispatchQueue.main.async {
                    print(array.count)
                    completion(array)
                }
            }
        })
        dataTask?.resume()
    }
    
    func fetchAPIResults(completion: @escaping ([Any]?) -> Void) {
        dataTask2?.cancel()
        guard let url = URL(string: apiURL) else { return }
        
        dataTask2 = defaultSession.dataTask(with: url, completionHandler: { data, response, error in
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                var response: [String: Any]?
                do {
                    response = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                } catch _ as NSError { return }
                guard let array = response!["questions"] as? [Any] else { return }
                
                
                DispatchQueue.main.async {
                    print(array.count)
                    completion(array)
                }
            }
        })
        dataTask2?.resume()
    }
}
