//
//  GithubClientError.swift
//  GithubSearchRepository
//
//  Created by 上原和輝 on 2018/02/12.
//  Copyright © 2018年 nappannda. All rights reserved.
//

enum GithubClientError : Error {
    // 通信に失敗
    case connectionError(Error)
    
    // レスポンスの解釈に失敗
    case responseParseError(Error)
    
    // APIからエラーレスポンスをもらった
    case apiError(GithubAPIError)
}
