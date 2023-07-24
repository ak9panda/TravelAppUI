//
//  AdBannerCollectionViewCell.swift
//  TravelAppUI
//
//  Created by Aung Kyaw Phyo on 7/24/23.
//

import UIKit

class AdBannerCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgAdPoster: UIImageView!
    
    static let reuseIdentifier: String = String(describing: HeaderTableViewCell.self)

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
