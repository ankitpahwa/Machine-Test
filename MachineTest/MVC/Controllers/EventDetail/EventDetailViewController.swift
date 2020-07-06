//
//  EventDetailViewController.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {
    
    @IBOutlet weak var labelEventType: UILabel!
    @IBOutlet weak var collectionViewTabItems: UICollectionView?{
        didSet{
            collectionViewTabItems?.delegate = self
            collectionViewTabItems?.dataSource = self
            collectionViewTabItems?.reloadData()
        }
    }
    @IBOutlet weak var scrollView: UIScrollView!
    
    //MARK::- VERIABLES
    var isSelectedIndexPath = 0
    
    var arrayTabItems: [EventTabItem] =  [.overview,.additionalInfo,.contact,.comment]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
