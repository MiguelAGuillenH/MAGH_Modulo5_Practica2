//
//  MenuOptionCell.swift
//  MAGH_Modulo5_Practica2
//
//  Created by MAGH on 11/03/24.
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var menuImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        menuLabel.makeFontScalable(forTextStyle: .body)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
