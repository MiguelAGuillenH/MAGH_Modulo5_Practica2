//
//  ViewExtension.swift
//  MAGH_Modulo5_Practica2
//
//  Created by MAGH on 12/03/24.
//

import Foundation
import UIKit

extension UIView {
    
    func makeFontScalable(forTextStyle style: UIFont.TextStyle) {
        if let adjustable = self as? UIContentSizeCategoryAdjusting {
            adjustable.adjustsFontForContentSizeCategory = true
        }
        
        if let label = self as? UILabel {
            label.font = label.font.scalableFont(forTextStyle: style)
        }
    }
    
}
