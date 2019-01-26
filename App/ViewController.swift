//
//  ViewController.swift
//  App
//
//  Created by Raul Quispe on 1/24/19.
//  Copyright © 2019 Quima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendName(_ sender: UIButton) {
        if isValidEmail(testStr: txtMail.text!) == true {
            txtMail.textColor = .green
            self.goToLogin()
        }else{
            txtMail.textColor = .red
        }
    }
    func goToLogin(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let greetingsView:GreetingsViewController = storyboard.instantiateViewController(withIdentifier: "greetingsView") as! GreetingsViewController
        greetingsView.greeting = txtMail.text!
        self.present(greetingsView, animated: true, completion: nil)

    }
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
}

