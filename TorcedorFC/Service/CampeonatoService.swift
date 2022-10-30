//
//  ListaDeCampeonatoService.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.
//

import Foundation

protocol CampeonatoServiceProtocol: GenericService {
    func getAllListaDeCampeonatos(completion: @escaping completion<[Campeonato]?>)
}

class CampeonatoService: CampeonatoServiceProtocol {
    private let baseUrl: String = "https://api.api-futebol.com.br/v1/"
    private let keychain: String = "live_81f4054f57f2d6c1ea0f73996d5d57"
    private let keychainTest: String = "test_2ada5f4c7bb777d3be168a3da854e0"
    
    func getAllListaDeCampeonatos(completion: @escaping completion<[Campeonato]?>) {
        guard let url = URL(string: "\(baseUrl)campeonatos") else {
            return completion(nil, Error.errorDescription(message: "Erro De URL"))
        }
        
        let header = ["Authorization": "Bearer \(keychain)"]
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = header
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                return completion(nil, Error.errorDescription(message: "Erro De Data", error: error))
            }
            
            let json = try? JSONSerialization.jsonObject(with: data)
            //  print(json as Any)
            
            guard let response = response as? HTTPURLResponse else {
                return completion(nil, Error.errorDescription(message: "Erro Do Response", error: error))
            }
            
            do {
                let decodeData = try JSONDecoder().decode([Campeonato].self, from: data)
                completion(decodeData, nil)
            } catch {
                completion(nil, Error.errorDescription(message: "Erro Do Parse", error: error))
            }
        }
        task.resume()
    }
}
