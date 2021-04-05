//
//  Request.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import Foundation
import Alamofire

func Login(usuario: String , password : String,completion: @escaping (Swift.Result<Data, String>) -> Void) {
    let url = Globals.LoginUrl
    let parameters: [String: String] = ["email": usuario , "password" : password]
    AF.request(url,method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
        let statuscode = response.response?.statusCode
                if statuscode==200 {
                    completion(.success(response.data!))
                } else {
                    completion(.failure("Please check your credentials"))
                    return
                  
                }
   }//FIN DE AF.REQUEST
  
}
