//
//  JSONDecodeError.swift
//  GithubSearchRepository
//
//  Created by 上原和輝 on 2018/02/12.
//  Copyright © 2018年 nappannda. All rights reserved.
//

enum JSONDecodeError : Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, actualValue: Any?)
}
