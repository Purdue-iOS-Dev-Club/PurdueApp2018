//
//  Item.swift
//  PurdueApp
//
//  Created by Siraj Zaneer on 2/16/18.
//  Copyright © 2018 Purdue iOS Developmemnt Club. All rights reserved.
//

import UIKit

struct Item {
    var id: String
    var name: String
    
    init(itemJSON: [String: Any]) {
        id = itemJSON["ID"] as! String
        name = itemJSON["Name"] as! String
    }
    
    static func parseItems(itemsJSON: [[String: Any]]) -> [Item] {
        var items: [Item] = []
        for itemJSON in itemsJSON {
            items.append(Item(itemJSON: itemJSON))
        }
        
        return items
    }
}
