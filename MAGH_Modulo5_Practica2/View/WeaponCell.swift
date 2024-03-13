//
//  WeaponCell.swift
//  MAGH_Modulo5_Practica2
//
//  Created by MAGH on 11/03/24.
//

import UIKit

class WeaponCell: UITableViewCell {

    @IBOutlet weak var weaponTitle: UILabel!
    @IBOutlet weak var weaponImage: UIImageView!
    @IBOutlet weak var weaponDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        weaponTitle.makeFontScalable(forTextStyle: .body)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
