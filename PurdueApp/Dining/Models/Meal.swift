//
//  Meal.swift
//  PurdueApp
//
//  Created by Siraj Zaneer on 2/16/18.
//  Copyright © 2018 Purdue iOS Developmemnt Club. All rights reserved.
//

import UIKit

struct Meal {
    var id: String
    var name: String
    var order: Int
    var startTime: Date
    var endTime: Date

    init(mealJSON: [String: Any]) {
        id = mealJSON["ID"] as! String
        name = mealJSON["Name"] as! String
        order = mealJSON["Order"] as! Int
        let hours = mealJSON["Hours"] as! [String: Any]
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        startTime = dateFormatter.date(from: hours["StartTime"] as! String)!
        endTime = dateFormatter.date(from: hours["EndTime"] as! String)!
    }
    
    static func parseMeals(mealsJSON: [[String: Any]]) -> [Meal] {
        var meals: [Meal] = []
        for mealJSON in mealsJSON {
            meals.append(Meal(mealJSON: mealJSON))
        }
        
        return meals
    }
}
