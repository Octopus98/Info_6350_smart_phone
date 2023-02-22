//
//  ViewController.swift
//  AssignmentTblViewXib
//
//  Created by Octopus John on 2/21/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let imageName = ["food0", "food1", "food2", "food3", "food4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        let foodName = ["burger", "fries", "hotdog", "pizza", "wings"]
        cell.imgContainer.image = UIImage(named: "food\(indexPath.row)")
        cell.lblImage.text = foodName[indexPath.row]
        return cell
    }
    

}

