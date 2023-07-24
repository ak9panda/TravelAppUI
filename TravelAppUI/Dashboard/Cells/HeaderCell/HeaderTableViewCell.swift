//
//  HeaderTableViewCell.swift
//  TravelAppUI
//
//  Created by Aung Kyaw Phyo on 7/24/23.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCollectionView: UICollectionView!
    @IBOutlet weak var seeAllView: UIView!
    
    static let reuseIdentifier: String = String(describing: HeaderTableViewCell.self)

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCollectionView.dataSource = self
        imageCollectionView.delegate = self
        imageCollectionView.register(AdBannerCollectionViewCell.nib, forCellWithReuseIdentifier: AdBannerCollectionViewCell.reuseIdentifier)
        imageCollectionView.reloadData()
    }
}

extension HeaderTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: AdBannerCollectionViewCell.reuseIdentifier, for: indexPath) as? AdBannerCollectionViewCell else {
            return UICollectionViewCell()
        }
        let image = ["beach1", "beach2", "beach3", "beach4", "beach5"].randomElement()
        cell.imgAdPoster.image = UIImage(named: image ?? "")
        return cell
    }
}

extension HeaderTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.contentView.frame.width - 20, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
