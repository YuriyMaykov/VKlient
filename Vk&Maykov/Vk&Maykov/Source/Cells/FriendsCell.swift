//
//  FriendsCell.swift
//  Vk&Maykov
//
//  Created by Юрий on 02/10/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import UIKit

class FriendsCell: UITableViewCell {
    @IBOutlet weak var friendNameLabel: UILabel!
    @IBOutlet weak var friendAvatar: UIImageView!

    override func prepareForReuse() {
        super.prepareForReuse()
        
        friendNameLabel.text = nil
        friendAvatar.image = nil
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
