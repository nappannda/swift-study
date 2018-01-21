import Foundation

// 2つの文字列間の順序の比較
let options = String.CompareOptions.caseInsensitive
let order = "abc".compare("ABC", options: options)
order == ComparisonResult.orderedSame

"abc".range(of: "bc")
