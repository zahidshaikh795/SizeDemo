//
//  ViewController.swift
//  SizeChartDemo
//
//  Created by Zahid Shaikh on 16/02/19.
//  Copyright © 2019 Zahid Shaikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tableview: UITableView!
    let item1 = Size(type: "medium", us: "11", uk: "21", foot: "31", feet: "41")
    let item2 = Size(type: "medium", us: "11", uk: "21", foot: "31", feet: "41")
    let item3 = Size(type: "medium", us: "11", uk: "21", foot: "31", feet: "41")
    let item4 = Size(type: "medium", us: "11", uk: "21", foot: "31", feet: "41")
    let item5 = Size(type: "medium", us: "11", uk: "21", foot: "31", feet: "41")
    var arr = [Size]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arr.append(contentsOf: [item1,item2,item3,item4,item5])
        self.label1.text = "1"
        self.l4.text = "1"
        self.l2.text = "1"
      //  self.l3.text = "1"
        self.l3.isHidden = true
        // git checking
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sizeCell", for: indexPath) as! SizeCell
        let data = arr[indexPath.row]
        cell.displayCell(str: data)
        return cell
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
    
}

struct Size {
    let type: String?
    let us: String?
    let uk: String?
    let foot:String?
    let feet: String?
}
