//
//  AddAccount.swift
//  Domain
//
//  Created by Gabriel Oliveira on 22/01/22.
//

import Foundation

protocol AddAccount {
    func add (addAcountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}


struct AddAccountModel {
    var name: String
    var email: String
    var password: String
    var passwordConfirmation: String
}

