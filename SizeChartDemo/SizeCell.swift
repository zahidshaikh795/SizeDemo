//
//  SizeCell.swift
//  SizeChartDemo
//
//  Created by Zahid Shaikh on 16/02/19.
//  Copyright © 2019 Zahid Shaikh. All rights reserved.
//

import UIKit

class SizeCell: UITableViewCell {
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    func displayCell(str: Size){
        self.lbl1.text = str.type
        self.lbl2.text = str.us
        self.lbl3.text = str.uk
        self.lbl4.text = str.foot
        self.lbl5.text = str.foot
        self.lbl6.text = str.foot
        self.lbl7.text = str.foot
    }
    
}
