//
//  AlertHelper.swift
//  OrionTekApp
//
//  Created by Sreyes on 6/4/26.
//

import UIKit

class AlertHelper {
    
    static func showAlert(message: String) {
        guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let root = scene.windows.first?.rootViewController else { return }
        
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        root.present(alert, animated: true)
    }
}
