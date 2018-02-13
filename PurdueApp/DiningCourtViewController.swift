//
//  DiningCourtViewController.swift
//  PurdueApp
//
//  Created by Siraj Zaneer on 2/13/18.
//  Copyright © 2018 Purdue iOS Developmemnt Club. All rights reserved.
//

import UIKit
import SPTinderView

class DiningCourtViewController: UIViewController {

    @IBOutlet weak var diningView: SPTinderView!
    
    var names = ["Earhart", "Ford", "Hillenbrand", "The Gathering Place", "Wiley", "Windsor"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        super.viewDidLoad()
        diningView.frame = self.view.frame
        diningView.registerClass(DiningCourtCell.self, forCellReuseIdentifier: "DiningCell")
        diningView.dataSource = self
        diningView.delegate = self
        diningView.backgroundColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension DiningCourtViewController: SPTinderViewDataSource, SPTinderViewDelegate {
    func tinderView(_ view: SPTinderView, didSelectCellAt index: Int) {
        return
    }
    
    func numberOfItemsInTinderView(_ view: SPTinderView) -> Int {
        return 6
    }
    
    func tinderView(_ view: SPTinderView, cellAt index: Int) -> SPTinderViewCell? {
        if let cell = diningView.dequeueReusableCellWithIdentifier("DiningCell") as? DiningCourtCell {
            cell.titleLabel.text = names[index]
            cell.imageView.image = UIImage(named: names[index])
            return cell
        }
        return nil
    }
    
    func tinderView(_ view: SPTinderView, didMoveCellAt index: Int, towards direction: SPTinderViewCellMovement) {
        print("\(direction)")
    }
}
