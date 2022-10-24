//
//  GerericService.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.
//

import Foundation

protocol GenericService: AnyObject {
    typealias completion <T> = (_ success: T, _ error: Error?) -> Void
}

enum Error: Swift.Error {
    case errorDescription(message: String, error: Swift.Error? = nil) 
}
