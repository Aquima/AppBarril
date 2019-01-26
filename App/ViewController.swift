//
//  ViewController.swift
//  App
//
//  Created by Raul Quispe on 1/24/19.
//  Copyright © 2019 Quima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendName(_ sender: UIButton) {
      //  lblName.text
//        let greetingsView = GreetingsViewController()
//        greetingsView.view.backgroundColor = .blue
//        self.present(greetingsView, animated: true, completion: nil)
//
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let greetingsView:GreetingsViewController = storyboard.instantiateViewController(withIdentifier: "greetingsView") as! GreetingsViewController
        greetingsView.greeting = lblName.text!
        self.present(greetingsView, animated: true, completion: nil)
    }
    
}

