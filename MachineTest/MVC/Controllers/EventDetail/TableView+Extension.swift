//
//  TableView+Extension.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import Foundation
import UIKit

extension EventDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OverviewInfoSection.count.rawValue
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}

extension EventDetailViewController: UIScrollViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        var point = CGPoint()
        if (scrollView.contentOffset.x == 0){
            point = CGPoint(x: 375, y: scrollView.contentOffset.y)
            NotificationCenter.default.post(name: Notification.Name(NotificationIdentifiers.overView.rawValue), object: nil)
            self.isSelectedIndexPath = 1
        }else if(scrollView.contentOffset.x == 375){
            point = CGPoint(x: 750, y: scrollView.contentOffset.y)
            self.isSelectedIndexPath = 2
            NotificationCenter.default.post(name: Notification.Name(NotificationIdentifiers.addtionalInfo.rawValue), object: nil)
        }else if(scrollView.contentOffset.x == 750){
            point = CGPoint(x: 1125, y: scrollView.contentOffset.y)
            self.isSelectedIndexPath = 3
            NotificationCenter.default.post(name: Notification.Name(NotificationIdentifiers.contact.rawValue), object: nil)
        }else if(scrollView.contentOffset.x  == 1125){
            point = CGPoint(x: 1500, y: scrollView.contentOffset.y)
            NotificationCenter.default.post(name: Notification.Name(NotificationIdentifiers.comment.rawValue), object: nil)
            self.isSelectedIndexPath = 4
        }
        collectionViewTabItems?.reloadData()
    }
}
extension EventDetailViewController: CollapsableCellDelegate {
    func selectedCell(index: Int, button: UIButton) {
        
    }
}
