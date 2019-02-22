//
//  ViewController.swift
//  SizeChartDemo
//
//  Created by Zahid Shaikh on 16/02/19.
//  Copyright © 2019 Zahid Shaikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .starwarsSpaceBlue
        //groupify()
    }
    
    func syncWork(completion: @escaping () -> Void){
        let northZone = DispatchQueue(label: "perform_task_with_team_north")
        let southZone = DispatchQueue(label: "perform_task_with_team_south")
        
        northZone.sync {
            for numer in 1...3{ print("North \(numer)")}
        }
        southZone.sync {
            for numer in 1...3{ print("South \(numer)") }
        }
    }
    func asyncWork(completion: @escaping () -> Void){
        let northZone = DispatchQueue(label: "perform_task_with_team_north")
        let southZone = DispatchQueue(label: "perform_task_with_team_south")
        
        northZone.async {
            for numer in 21...25{ print("NorthAsync \(numer)") }
        }
        southZone.async {
            for numer in 21...25{ print("SouthAsync \(numer)") }
        }
    }
    func groupify(){
        let dispatchGroup = DispatchGroup()
        
        dispatchGroup.enter()
        syncWork() { dispatchGroup.leave() }
        
        dispatchGroup.enter()
        asyncWork() { dispatchGroup.leave() }
        
        dispatchGroup.notify(queue: DispatchQueue.main) {
            print("work done")
        }
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.displaycell()
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let maskPath = UIBezierPath(roundedRect: cell.bounds, byRoundingCorners: UIRectCorner(arrayLiteral: .bottomLeft,.bottomRight), cornerRadii: CGSize(width: 10.0, height: 10.0))
        let masklayer = CAShapeLayer()
        masklayer.frame = cell.bounds
        masklayer.path = maskPath.cgPath
        //cell.layer.backgroundColor = UIColor.red.cgColor
        cell.layer.mask = masklayer
    }
    
    
}
