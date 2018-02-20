//
//  DiningCourt.swift
//  PurdueApp
//
//  Created by Siraj Zaneer on 2/16/18.
//  Copyright © 2018 Purdue iOS Developmemnt Club. All rights reserved.
//

import UIKit

struct DiningCourt {
    
    let location: String
    var date: Date
    var dateString: String
    var meals: [Meal]
    
    init(diningCourtData: [String: Any]) {
        location = diningCourtData["Location"] as! String
        dateString = diningCourtData["Date"] as! String
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        date = dateFormatter.date(from: dateString)!
        let mealsArr = diningCourtData["Meals"] as! [[String: Any]]
        meals = Meal.parseMeals(mealsJSON: mealsArr)
        print(meals[0].name)
    }
}
