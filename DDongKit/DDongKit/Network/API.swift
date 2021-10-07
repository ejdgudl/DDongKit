//
//  API.swift
//  DDongKit
//
//  Created by 김동현 on 2021/10/07.
//

import Alamofire
import ObjectMapper

protocol RequestAble {
    static func startRequest<T: Mappable>(_ method: HTTPMethod, url: String, parameters: [String: Any]?, headers: HTTPHeaders?, completion: @escaping (Result<T, AFError>) -> ())
}

// SubClassingAble in OtherFramework
open class RequestManager: RequestAble {
    
    /// startRequest
    /// - Parameters:
    ///   - method: HTTPMethod
    ///   - url: url
    ///   - parameters: params
    ///   - headers: headers
    ///   - completion: escaping element ( T: Mappable )
    static public func startRequest<T: Mappable>(_ method: HTTPMethod, url: String, parameters: [String: Any]?, headers: HTTPHeaders?, completion: @escaping (Result<T, AFError>) -> ()) {
        let encoding: ParameterEncoding = method == .get
            ? URLEncoding.default
            : JSONEncoding.default
        let params = parameters
        AF.request(url, method: method, parameters: params, encoding: encoding, headers: headers)
            .response(completionHandler: { response in
                debugPrint(response)
                switch response.result {
                case .success(_):
                    guard let data = response.data,
                          let jsonString = String(data: data, encoding: .utf8),
                          let final = T(JSONString: jsonString) else {
                        return
                    }
                    completion(.success(final))
                case .failure(let error):
                    completion(.failure(error))
                }
            })
    }
    
}
