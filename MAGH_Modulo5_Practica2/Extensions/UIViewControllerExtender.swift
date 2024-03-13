//
//  UIViewControllerExtender.swift
//  MAGH_Modulo5_Practica2
//
//  Created by MAGH on 12/03/24.
//

import Foundation
import UIKit

//Alert messages
extension UIViewController {
    //MARK: Alert window
    func show(error: String) {
        let alert = UIAlertController(title: "Error", message:error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style:.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    //MARK: Error window
    func show(warning: String) {
        let alert = UIAlertController(title: "Alerta",message: warning, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style:.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    //MARK: Binary Question
    func ask(title: String?, question: String?,
             positiveButtonTitle: String = "Sí", negativeButtonTitle:
             String = "No", isDangerousAction: Bool = false, delegate: @escaping (_ agreed: Bool) -> Void) {
        
        let alert = UIAlertController(title: title, message:question, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title:positiveButtonTitle, style: isDangerousAction ? .destructive : .default) { (_) in
            delegate(true)
        })
        
        alert.addAction(UIAlertAction(title:negativeButtonTitle, style: .cancel) { (_) in
            delegate(false)
        })
        present(alert, animated: true, completion: nil)
    }
    //MARK: One line text answer question
    func ask(title: String?, question: String?, placeholder:String?, keyboardType:UIKeyboardType = .default, delegate:@escaping (_ answer: String?) -> Void) {
        let alert = UIAlertController(title: title, message:question, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = placeholder
            textField.keyboardType = keyboardType
        }
        alert.addAction(UIAlertAction(title: "Aceptar", style:.default) {(_) in
        let answer = alert.textFields?.first?.text
        delegate(answer)
        })
        alert.addAction(UIAlertAction(title: "Cancelar", style:.cancel) { (_) in
        delegate(nil)
        })
        present(alert, animated: true, completion: nil)
    }
}

//Check if a segue can be performed
extension UIViewController {
    
    func canPerformSegue(withIdentifier identifier: String) -> Bool {
        //Get all segues
        guard let segues = value(forKey: "storyboardSegueTemplates") as? [NSObject] else {
            //Return false if there are no segues
            return false
        }
        
        //For all segues
        let canPerform = segues.contains{ (object) -> Bool in
            //Check if the identifier matches
            if let id = object.value(forKey: "_identifier") as? String {
                return id == identifier
            }else{
                return false
            }
        }
        
        return canPerform
    }
    
}
