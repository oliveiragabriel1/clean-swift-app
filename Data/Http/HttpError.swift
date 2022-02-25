//
//  HttpError.swift
//  Data
//
//  Created by Gabriel Oliveira on 30/01/22.
//

import Foundation

public enum HttpError: Error {
    case noConectivity
    case badRequest
    case serverError
    case unauthorized
    case forbidden
}
