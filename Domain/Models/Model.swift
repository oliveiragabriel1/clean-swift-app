//
//  Model.swift
//  Domain
//
//  Created by Gabriel Oliveira on 23/01/22.
//

import Foundation

public protocol Model: Codable, Equatable {}

public extension Model {
    func toData () -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
