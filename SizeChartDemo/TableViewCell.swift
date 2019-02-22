//
//  TableViewCell.swift
//  SizeChartDemo
//
//  Created by Mohammad Asif on 19/02/19.
//  Copyright © 2019 Zahid Shaikh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var l1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        print("preparing for reuse")
    }
    func displaycell(){
//        if !(self.backgroundView is CellBackground) {
//            self.backgroundView = CellBackground()
//        }
//
//        if !(self.selectedBackgroundView is CellBackground) {
//            self.selectedBackgroundView = CellBackground()
//        }
//        l1.textColor = .starwarsStarshipGrey
        l1.text = "dskjhfjdsfhjwsadgfjcxfghajsdldskjhfjdsfhjwsadgfjcxfghajsdldskjhfjdsfhjwsadgfjcxfghajsdldskjhfjdsfhjwsadgfjcxfghajsdldskjhfjdsfhjwsadgfjcxfghajsdl"
        
    }

}
