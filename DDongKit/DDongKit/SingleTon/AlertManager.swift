//
//  AlertManager.swift
//  DDongKit
//
//  Created by 김동현 on 2021/10/15.
//

import UIKit

public extension UIViewController {
    typealias AlertActionHandler = ((UIAlertAction) -> Void)
    /// - Parameters:
    ///   - title: title. - Required
    ///   - message: message.
    ///   - okTitle: 확인 버튼 title.
    ///   - okHandler: 확인 버튼 closure
    ///   - cancelTitle: 취소 버튼 title.
    ///   - cancelHandler: 취소 버튼 closure.
    ///   - completion: call back closure
    func alert(title: String, message: String? = nil, okTitle: String = "OK", okHandler: AlertActionHandler? = nil, cancelTitle: String? = nil, cancelHandler: AlertActionHandler? = nil, completion: (() -> Void)? = nil) {
        let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if let okClosure = okHandler {
            let okAction: UIAlertAction = UIAlertAction(title: okTitle, style: .default, handler: okClosure)
            let cancelAction: UIAlertAction = UIAlertAction(title: cancelTitle, style: .cancel, handler: cancelHandler)
            alert.addAction(okAction)
            alert.addAction(cancelAction)
        } else {
            if cancelTitle != nil {
                let cancelAction: UIAlertAction = UIAlertAction(title: okTitle, style: UIAlertAction.Style.cancel, handler: cancelHandler)
                alert.addAction(cancelAction)
            } else {
                let cancelAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: cancelHandler)
                alert.addAction(cancelAction)
            }
        }
        self.present(alert, animated: true, completion: completion)
    }
}
