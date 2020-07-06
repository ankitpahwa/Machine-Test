//
//  enums.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import Foundation
enum EventTabItem: String {
  case overview = "Overview",additionalInfo  = "Additional Info", contact = "Contact",comment = "Comment"
}

enum EventDetailSection: Int {
    case info
    case event_location
    case brif_description
    case view_event_organizer
    case view_event_sponsers
    case view_event_performers
    case view_sitting_plan
    case count
}

enum EventTabSection: Int {
    case overview
    case additionalInfo
    case contact
    case comment
    case count
}

enum OverviewInfoSection: Int {
    case genral_info
    case event_loction
    case brief_description
    case view_event_organizer
    case view_event_sponsers
    case view_event_performers
    case view_seating_plan
    case count
}

enum OverviewHeaderTitle: String {
    case genral_info = "Genral Information"
    case event_loction = "Event Location"
    case brief_desciption = "Brief Description"
    case view_event_organizer = "View Event Organizer"
    case view_event_sponsers = "View Event Sponsers"
    case view_event_performers = "View Event Performers"
    case view_seating_plan = "View Seating Plan"
}

enum NotificationIdentifiers: String {
    case overView = "OverView"
    case addtionalInfo = "AddtionalInfo"
    case contact = "Contact"
    case comment = "Comment"
}
