//
//  ViewController.swift
//  AssignmentTwoTableView
//
//  Created by Octopus John on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let restaurant = ["McDonalds","Hot Pot","Papa Johns","Subway"]
    var foodEmpty:[String] = []
    let food = [["sandwiches","burger","fries","beverage"],["beef","vege","noodle","beverage"],["chicken","fries","pizza","beverage"],["bread","meat","sauce","beverage"]]

    @IBOutlet weak var tblViewTop: UITableView!
    
    @IBOutlet weak var tblViewBottom: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop{
            return restaurant.count
        }else{
            return foodEmpty.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = restaurant[indexPath.row]
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = foodEmpty[indexPath.row]
            return cell
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop{
            foodEmpty = food[indexPath[1]]
            self.tblViewBottom.reloadData()
        }
    }
    
}

