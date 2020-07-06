//
//  CollectionView+Extension.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import Foundation
import UIKit
extension EventDetailViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return EventTabSection.count.rawValue
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TabItemCollectionViewCell.identifier, for: indexPath) as! TabItemCollectionViewCell
        if indexPath.row == EventTabSection.contact.rawValue {
            cell.labelItemName.textAlignment = .center
        }else {
            cell.labelItemName.textAlignment = .left
        }
        let items = arrayTabItems[indexPath.item]
        cell.labelItemName.text = items.rawValue
        cell.labelItemName.textColor = self.isSelectedIndexPath == indexPath.item ? .black : .darkGray
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.isSelectedIndexPath = indexPath.item
        switch indexPath.item {
        case EventTabSection.overview.rawValue:
            self.scrollView.setContentOffset(.zero, animated: true)
            NotificationCenter.default.post(name: Notification.Name(NotificationIdentifiers.overView.rawValue), object: nil)
        case EventTabSection.additionalInfo.rawValue:
            self.scrollView.setContentOffset(CGPoint(x: self.scrollView.frame.size.width, y: 0), animated: true)
            NotificationCenter.default.post(name: Notification.Name(NotificationIdentifiers.addtionalInfo.rawValue), object: nil)
        case EventTabSection.contact.rawValue:
            self.scrollView.setContentOffset(CGPoint(x: self.scrollView.frame.size.width * 2, y: 0), animated: true)
            NotificationCenter.default.post(name: Notification.Name(NotificationIdentifiers.contact.rawValue), object: nil)
        case EventTabSection.comment.rawValue:
            self.scrollView.setContentOffset(CGPoint(x: self.scrollView.frame.size.width * 3, y: 0), animated: true)
            NotificationCenter.default.post(name: Notification.Name(NotificationIdentifiers.comment.rawValue), object: nil)
        default:
            break
        }
        self.collectionViewTabItems?.reloadData()
    }
}
extension EventDetailViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width)/4, height: 32)
    }
}
