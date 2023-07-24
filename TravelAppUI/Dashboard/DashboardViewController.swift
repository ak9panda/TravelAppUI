//
//  ViewController.swift
//  TravelAppUI
//
//  Created by Aung Kyaw Phyo on 7/24/23.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var dashboardTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dashboardTableView.dataSource = self
        dashboardTableView.delegate = self
        
        dashboardTableView.register(HeaderTableViewCell.nib, forCellReuseIdentifier: HeaderTableViewCell.reuseIdentifier)
        dashboardTableView.register(CategoryTableViewCell.nib, forCellReuseIdentifier: CategoryTableViewCell.reuseIdentifier)
        dashboardTableView.register(RoomTableViewCell.nib, forCellReuseIdentifier: RoomTableViewCell.reuseIdentifier)
        dashboardTableView.register(RateTableViewCell.nib, forCellReuseIdentifier: RateTableViewCell.reuseIdentifier)
        
        dashboardTableView.reloadData()
    }
}

extension DashboardViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0, 1: return 1
        case 2: return 3
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let headerCell = tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.reuseIdentifier) as? HeaderTableViewCell
            else {return UITableViewCell()}
            return headerCell
        case 1:
            guard let categoryCell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.reuseIdentifier) as? CategoryTableViewCell
            else {return UITableViewCell()}
            return categoryCell
        case 2:
            guard let roomCell = tableView.dequeueReusableCell(withIdentifier: RoomTableViewCell.reuseIdentifier) as? RoomTableViewCell
            else {return UITableViewCell()}
            return roomCell
        default: return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.estimatedRowHeight
    }
}

// MARK: - SEGMENT DATA CHANGE FROM CATEGORY CELL
extension DashboardViewController: DataChangeByCustomSegmentProtocol {
    func changeSegment(currentIndex: Int) {
        switch currentIndex {
        case 0: break
        case 1: break
        default: break
        }
    }
}

