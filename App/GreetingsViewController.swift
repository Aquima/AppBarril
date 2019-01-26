//
//  GreetingsViewController.swift
//  App
//
//  Created by Raul Quispe on 1/24/19.
//  Copyright © 2019 Quima. All rights reserved.
//

import UIKit

class GreetingsViewController: UIViewController {
    var greeting = ""
     @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.lblName.text = greeting
    }
    @IBAction func goBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
