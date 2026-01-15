//
//  NetworkHelper.swift
//  Practice
//
//  Created by Ragul Lakshmanan on 08/01/26.
//

import Foundation

public struct Person: Codable {
    var name: String
}


public class NetworkHelper {
    
    
    public func fetchRequest() async throws -> [Person] {
        let request = URLRequest(url: URL(string: "https://api.shell-ai.com/recommendations")!)
        let (data, _) = try await URLSession.shared.data(for: request)
        let personData = try JSONDecoder().decode([Person].self, from: data)
        return personData
    }
    
    public func webSocketTry() {
        let request = URLRequest(url: URL(string: "https://api.shell-ai.com/recommendations")!)
        let task = URLSession.shared.webSocketTask(with: URL(string: "https://api.shell-ai.com/recommendations")!)
        task.resume()
        
        task.receive { (result) in
        switch result {
            case .success(let message):
                print(message)
            case .failure(let error):
                print(error)
            }
        }
    }
}
