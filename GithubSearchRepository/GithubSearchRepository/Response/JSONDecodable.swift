//
//  JSONDecodable.swift
//  GithubSearchRepository
//
//  Created by 上原和輝 on 2018/02/12.
//  Copyright © 2018年 nappannda. All rights reserved.
//

protocol JSONDecodable {
    init(json: Any) throws
}
