import UIKit

// アプリケーション固有のエラー
enum WebAPIError : Error {
    case connectionError(Error)
    case fatalError
    
    var title: String {
        switch self {
        case .connectionError:
            return "通信エラー"
        case .fatalError:
            return "致命的エラー"
        }
    }
    
    var message: String {
        switch self {
        case .connectionError(let underlyingError):
            return underlyingError.localizedDescription + "再試行してください"
        case .fatalError:
            return "サポート窓口に連絡してください"
        }
    }
}

extension UIAlertController {
    convenience init(webAPIError: WebAPIError) {
        // UIAlertControllerの指定イニシャライザ
        self.init(title: webAPIError.title, message: webAPIError.message, preferredStyle: .alert)
    }
}

let error = WebAPIError.fatalError
let alertController = UIAlertController(webAPIError: error)
