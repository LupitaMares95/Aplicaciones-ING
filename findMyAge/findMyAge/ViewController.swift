//
//  ViewController.swift
//  findMyAge
//
//  Created by LABMAC10 on 08/02/19.
//  Copyright © 2019 LABMAC10. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var laShowAge: UILabel!
    @IBOutlet weak var txtYearOfBirth: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    @IBAction func BuFindDage(_ sender: Any) {
        GetAge()
    }
    func GetAge(){
        //fire click of button
        let yearOfBirth = Int(txtYearOfBirth.text!)
        let personAge = 2019 - yearOfBirth!
        laShowAge.text="Your age is \(personAge)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    // fire some click of return keyboard
    self.view.endEditing(true)
        return true
    }

}

