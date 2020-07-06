//
//  OverViewDetailViewController.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import UIKit

class OverViewDetailViewController: UIViewController {
    @IBOutlet weak var tableViewInfo: UITableView!{
        didSet {
            tableViewInfo?.register(UINib(nibName: GeneralInfoCell.identifier, bundle: nil), forCellReuseIdentifier: GeneralInfoCell.identifier)
            tableViewInfo?.register(UINib(nibName: EventLocationCell.identifier, bundle: nil), forCellReuseIdentifier: EventLocationCell.identifier)
            tableViewInfo?.register(UINib(nibName: BriefDescriptionCell.identifier, bundle: nil), forCellReuseIdentifier: BriefDescriptionCell.identifier)
            tableViewInfo?.register(UINib(nibName: ViewEventsTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: ViewEventsTableViewCell.identifier)
        }
    }
    var eventData: EventData?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewInfo.delegate = self
        tableViewInfo.dataSource = self
        tableViewInfo.reloadData()
        getResponseFromApi()
        // Do any additional setup after loading the view.
    }
    private func getResponseFromApi() {
        let viewModelObject = OverViewModel()
        viewModelObject.webServiceForGetOverviewInfo { (response) in
            self.eventData = response.data
            DispatchQueue.main.async {
              // self.tableView.reloadData()
            }
        }
    }
}
