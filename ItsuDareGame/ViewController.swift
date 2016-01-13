//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by hana on 4/11/2015.
//  Copyright © 2015 hana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var whenLabel: UILabel!
    @IBOutlet var whereLabel: UILabel!
    @IBOutlet var whoLabel: UILabel!
    @IBOutlet var whatLabel: UILabel!

    var whenArray:[String] = ["A year ago","A week ago","Yesterday","Today","Ten years ago","When the earth was created"]
    var whereArray:[String] = ["On a mountain","In the U.S.","At school","In class","In my house","On Mars"]
    var whoArray:[String] = ["I","The president","The teacher","My friend","Channing Tatum","Perry the Platypus"]
    var whatArray:[String] = ["Screamed","Made a speech","Got mad","Danced","Played football","Sang"]
    
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change() {
        //
        whenLabel.text = whenArray[index]
        whereLabel.text = whereArray[index]
        whoLabel.text = whoArray[index]
        whatLabel.text = whatArray[index]
    
        //
        index = index + 1
        
        //
        if index > 5{
        index = 0
        }
    }
    @IBAction func reset() {
        //
        whenLabel.text = "____"
        whereLabel.text = "____"
        whoLabel.text = "____"
        whatLabel.text = "____"
        
        //
        index = 0
    }
    @IBAction func random() {
        //
        var whenIndex = Int(arc4random_uniform(6))
        var whereIndex = Int(arc4random_uniform(6))
        var whoIndex = Int(arc4random_uniform(6))
        var whatIndex = Int(arc4random_uniform(6))
        
        //
        whenLabel.text = whenArray[whenIndex]
        whereLabel.text = whereArray[whereIndex]
        whoLabel.text = whoArray[whoIndex]
        whatLabel.text = whatArray[whatIndex]
    }
}

