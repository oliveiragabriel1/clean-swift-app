//
//  ExtensionHelpers.swift
//  Data
//
//  Created by Gabriel Oliveira on 30/01/22.
//

import Foundation

public extension Data {
    func toModel<T: Decodable>() -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
}
