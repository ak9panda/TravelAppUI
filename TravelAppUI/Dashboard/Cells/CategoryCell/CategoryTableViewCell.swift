//
//  CategoryTableViewCell.swift
//  TravelAppUI
//
//  Created by Aung Kyaw Phyo on 7/24/23.
//

import UIKit

protocol DataChangeByCustomSegmentProtocol {
    func changeSegment(currentIndex: Int)
}

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var roomView: ParallelogramView!
    @IBOutlet weak var rateView: LeftParallelogramView!
    
    static let reuseIdentifier: String = String(describing: CategoryTableViewCell.self)
    
    var delegate: DataChangeByCustomSegmentProtocol?

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        roomView.isUserInteractionEnabled = true
        rateView.isUserInteractionEnabled = true
    }
    
    fileprivate func segmentChange() {
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
