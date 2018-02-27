//
//  SelectedCourtViewController.swift
//  PurdueApp
//
//  Created by Siraj Zaneer on 2/16/18.
//  Copyright © 2018 Purdue iOS Developmemnt Club. All rights reserved.
//

import UIKit

class SelectedCourtViewController: UIViewController {

    var name: String!
    var diningCourt: DiningCourt? {
        didSet {
            DispatchQueue.main.async {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadDiningCourtInfo()
    }

    func loadDiningCourtInfo() {
        DiningService.sharedInstance.getTodayMenu(name: name) {diningCount in
            self.diningCourt = diningCount
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
