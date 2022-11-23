//
//  UIViewController+Extension.swift
//  FirebaseAnalytics
//
//  Created by Sparkout on 09/11/22.
//

import UIKit

extension UIViewController {
    func showAlert(message: String) {
        let alert = UIAlertController(title: "My Title", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
