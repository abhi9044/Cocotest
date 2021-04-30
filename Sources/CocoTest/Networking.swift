//
//  Networking.swift
//  CocoTest
//
//  Created by Abhishek Singh on 29/04/21.
//

import Foundation

extension CocoTest{
    public class Networking{
        public class Manager{
            public init(){}
            private let session = URLSession.shared
            
            public func loadData(from url:URL, comletionHandler:@escaping
                                    (NetworkResult<Data>) -> Void){
                let task = session.dataTask(with: url){data, response, error in
                    let result  = data.map(NetworkResult<Data>.success) ??
                        .failure(error)
                    comletionHandler(result)
                }
                task.resume()
            }
        }
        public enum NetworkResult<Value>{
            case success(Value)
            case failure(Error?)
        }
    }
}
