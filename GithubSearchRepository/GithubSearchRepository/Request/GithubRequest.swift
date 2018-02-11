//
//  GithubRequest.swift
//  GithubSearchRepository
//
//  Created by 上原和輝 on 2018/02/12.
//  Copyright © 2018年 nappannda. All rights reserved.
//

import Foundation

protocol GitHubRequest {
    associatedtype Response: JSONDecodable
    
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Any? { get }
}

extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}
