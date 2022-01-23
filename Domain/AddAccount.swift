//
//  AddAccount.swift
//  Domain
//
//  Created by Gabriel Oliveira on 22/01/22.
//

import Foundation

public protocol AddAccount {
    func add (addAcountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}


public struct AddAccountModel: Encodable{
    public var name: String
    public var email: String
    public var password: String
    public var passwordConfirmation: String
    
    public init(name: String, email: String, password: String, passwordConfirmation: String){
        self.name = name
        self.email = email
        self.password = password
        self.passwordConfirmation = passwordConfirmation
    }
}

