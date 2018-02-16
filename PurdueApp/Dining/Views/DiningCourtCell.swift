//
//  DiningCourtCell.swift
//  PurdueApp
//
//  Created by Siraj Zaneer on 2/13/18.
//  Copyright © 2018 Purdue iOS Developmemnt Club. All rights reserved.
//

import UIKit
import SPTinderView

class DiningCourtCell: SPTinderViewCell {
    let titleLabel: UILabel = UILabel(frame: CGRect.zero)
    let imageView: UIImageView = UIImageView(frame: CGRect.zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required init(reuseIdentifier: String) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 300, height: 400))
        titleLabel.frame = CGRect(x: 0, y: self.frame.height - 50, width: self.frame.width, height: 50)
        imageView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height - 50)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        titleLabel.textAlignment = .center
        self.addSubview(imageView)
        self.addSubview(titleLabel)
    }
}
