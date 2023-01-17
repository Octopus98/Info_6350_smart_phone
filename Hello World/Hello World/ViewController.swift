//
//  ViewController.swift
//  Hello World
//
//  Created by Octopus John on 1/16/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        label.text = "Hello World"
    }
}

