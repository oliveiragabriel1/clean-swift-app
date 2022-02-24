//
//  TestFactories.swift
//  DataTests
//
//  Created by Gabriel Oliveira on 24/02/22.
//

import Foundation


func makeInvalidData() -> Data {
    return Data("invalid_data".utf8)
}
func makeUrl () -> URL {
    return  URL(string: "https://any-url.com.br")!
}