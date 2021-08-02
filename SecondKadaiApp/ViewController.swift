//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Yousuke Hasegawa on 2021/07/27.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var input:String = ""
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.delegate = self
    }
    
    @IBAction func textFieldInput(_ sender: Any) {
        input = textField.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.name = input
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }
}

