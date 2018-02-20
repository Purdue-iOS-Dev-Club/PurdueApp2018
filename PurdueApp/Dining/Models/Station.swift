//
//  Station.swift
//  PurdueApp
//
//  Created by Siraj Zaneer on 2/16/18.
//  Copyright © 2018 Purdue iOS Developmemnt Club. All rights reserved.
//

import UIKit

class Station: NSObject {
    var name: String
    var items: [Item]
    
    init(stationJSON: [String: Any]) {
        name = stationJSON["Name"] as! String
        let itemsJSON = stationJSON["Items"] as! [[String: Any]]
        items = Item.parseItems(itemsJSON: itemsJSON)
    }
    
    class func parseStations(stationsJSON: [[String: Any]]) -> [Station] {
        var stations: [Station] = []
        for stationJSON in stationsJSON {
            stations.append(Station(stationJSON: stationJSON))
        }
        
        return stations
    }
}
