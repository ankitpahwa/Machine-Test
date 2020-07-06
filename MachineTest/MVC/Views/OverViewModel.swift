//
//  ViewModel.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import UIKit
import Foundation

class OverViewModel {
    func webServiceForGetOverviewInfo(completionHandler: @escaping (ResponseData) -> Void) {
       var request = URLRequest(url: URL(string: "http://saudicalendar.com/api/user/getEventDetail?user_id=00&event_id=12&longitude=78.1245&latitude=28.1245")!)
       request.httpMethod = "POST"
       let session = URLSession.shared
       let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
           print(response!)
           do {
            let resultData = try JSONDecoder().decode(ResponseData.self, from: data!)
            debugPrint(resultData.data)
            completionHandler(resultData)
           } catch {
               print("error")
           }
       })
       task.resume()
    }
}
