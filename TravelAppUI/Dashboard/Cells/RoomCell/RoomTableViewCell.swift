//
//  RoomTableViewCell.swift
//  TravelAppUI
//
//  Created by Aung Kyaw Phyo on 7/24/23.
//

import UIKit

class RoomTableViewCell: UITableViewCell {
    
    static let reuseIdentifier: String = String(describing: RoomTableViewCell.self)

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
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
