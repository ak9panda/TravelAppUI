//
//  RateTableViewCell.swift
//  TravelAppUI
//
//  Created by Aung Kyaw Phyo on 7/24/23.
//

import UIKit

class RateTableViewCell: UITableViewCell {
    
    static let reuseIdentifier: String = String(describing: RateTableViewCell.self)

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
