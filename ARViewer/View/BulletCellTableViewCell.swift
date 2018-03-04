//
//  BulletCellTableViewCell.swift
//  ARViewer
//
//  Created by Yuqing Huang  on 28/02/2018.
//  Copyright © 2018 Faris Sbahi. All rights reserved.
//

import UIKit

class BulletCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var bulletView: UIImageView!
    @IBOutlet weak var bulletType: UILabel!
    @IBOutlet weak var bulletPower: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
