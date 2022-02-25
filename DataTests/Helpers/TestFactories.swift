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
func makeValidData() -> Data {
    return Data("{\"name\":\"Gabriel\"}".utf8)
}
func makeUrl() -> URL {
    return  URL(string: "https://any-url.com.br")!
}
func makeError() -> Error {
    return NSError(domain: "any_error", code: 0)
}
func makeHttpResponse(statusCode: Int = 200) -> HTTPURLResponse {
    return HTTPURLResponse(url: makeUrl(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
}
