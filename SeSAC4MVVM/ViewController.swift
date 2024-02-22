//
//  ViewController.swift
//  SeSAC4MVVM
//
//  Created by Minho on 2/23/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var validationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberTextField.addTarget(self, action: #selector(didNumberTextFieldEditingChanged), for: .editingChanged)
    }
    
    @objc private func didNumberTextFieldEditingChanged(sender: UITextField) {
        
    }
}

