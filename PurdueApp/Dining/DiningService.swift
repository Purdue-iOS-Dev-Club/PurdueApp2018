//
//  DiningService.swift
//  PurdueApp
//
//  Created by Siraj Zaneer on 2/16/18.
//  Copyright © 2018 Purdue iOS Developmemnt Club. All rights reserved.
//

import Foundation

class DiningService {
    static var sharedInstance = DiningService()
    
    let currDate = Date()
    let dateFormatter = DateFormatter()
    let baseURL = "https://api.hfs.purdue.edu/menus/v2/"
    let session = URLSession(configuration: .default)
    
    func getTodayMenu(name: String, success: @escaping ()->()) {
        dateFormatter.dateFormat = "YYYY-MM-dd"
        
        let url = URL(string: "\(baseURL)locations/\(name)/\(dateFormatter.string(from: currDate))")!
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data else {
                
                return
            }
            
            let diningJSON = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
            
            let diningCourt = DiningCourt(diningCourtData: diningJSON)
        }
        
        task.resume()
    }
}
