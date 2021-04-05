//
//  LoginService.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation
import RxSwift

protocol LoginServiceProtocol {
    func signIn(with credentials: Credentials) -> Observable<User>
}

class LoginService: LoginServiceProtocol {
    func signIn(with credentials: Credentials) -> Observable<User> {
        return Observable.create { observer in
            /*
             Networking logic here.
            */
            observer.onNext(User()) // Simulation of successful user authentication.
            return Disposables.create()
        }
    }
}

