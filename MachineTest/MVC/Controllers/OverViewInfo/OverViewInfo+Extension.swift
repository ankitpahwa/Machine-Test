//
//  OverViewInfo+Extension.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import Foundation
import UIKit
extension OverViewDetailViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OverviewInfoSection.count.rawValue
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let overViewInfoSection = OverviewInfoSection(rawValue: indexPath.row)  else {
            return UITableViewCell()
        }
        var cell = UITableViewCell()
        switch overViewInfoSection{
        case .genral_info:
            let genralInfoCell = tableView.dequeueReusableCell(withIdentifier: GeneralInfoCell.identifier, for: indexPath) as! GeneralInfoCell
            cell = genralInfoCell
            break
        case .event_loction:
            let eventLocationCell = tableView.dequeueReusableCell(withIdentifier: EventLocationCell.identifier, for: indexPath) as! EventLocationCell
            cell = eventLocationCell
            break
        case .brief_description:
            let genralInfoCell = tableView.dequeueReusableCell(withIdentifier: BriefDescriptionCell.identifier, for: indexPath) as! BriefDescriptionCell
            cell = genralInfoCell
            break
        case .view_event_organizer:
            let viewEventsTableViewCell = tableView.dequeueReusableCell(withIdentifier: ViewEventsTableViewCell.identifier, for: indexPath) as! ViewEventsTableViewCell
            viewEventsTableViewCell.labelTitle.text = OverviewHeaderTitle.view_event_organizer.rawValue
            cell = viewEventsTableViewCell
            break
        case .view_event_sponsers:
            let viewEventsTableViewCell = tableView.dequeueReusableCell(withIdentifier: ViewEventsTableViewCell.identifier, for: indexPath) as! ViewEventsTableViewCell
            viewEventsTableViewCell.labelTitle.text = OverviewHeaderTitle.view_event_sponsers.rawValue
            cell = viewEventsTableViewCell
            break
        case .view_event_performers:
            let viewEventsTableViewCell = tableView.dequeueReusableCell(withIdentifier: ViewEventsTableViewCell.identifier, for: indexPath) as! ViewEventsTableViewCell
            viewEventsTableViewCell.labelTitle.text = OverviewHeaderTitle.view_event_performers.rawValue
            cell = viewEventsTableViewCell
            break
        case .view_seating_plan:
            let viewEventsTableViewCell = tableView.dequeueReusableCell(withIdentifier: ViewEventsTableViewCell.identifier, for: indexPath) as! ViewEventsTableViewCell
            viewEventsTableViewCell.labelTitle.text = OverviewHeaderTitle.view_seating_plan.rawValue
            cell = viewEventsTableViewCell
            break
        default:
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let overViewInfoSection = OverviewInfoSection(rawValue: indexPath.row)  else {
            return 0
        }
        switch overViewInfoSection{
        case .genral_info:
            tableView.estimatedRowHeight = 190
            return UITableView.automaticDimension
        case .event_loction:
            return 240
        case .brief_description:
            tableView.estimatedRowHeight = 60
            return UITableView.automaticDimension
        case .view_event_organizer:
            return 142
        case .view_event_sponsers:
            return 60
        case .view_event_performers:
            return 60
        case .view_seating_plan:
            return 60
        default:
            return 0
        }
    }
}
