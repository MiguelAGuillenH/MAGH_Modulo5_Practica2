//
//  FontExtension.swift
//  MAGH_Modulo5_Practica2
//
//  Created by MAGH on 12/03/24.
//

import Foundation
import UIKit

extension UIFont {
    
    func scalableFont(forTextStyle style: UIFont.TextStyle) -> UIFont{
        let metrics = UIFontMetrics(forTextStyle: style)
        return metrics.scaledFont(for: self)
    }
    
}
