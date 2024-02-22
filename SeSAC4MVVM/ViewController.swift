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
        
        guard let text = numberTextField.text else {
            validationLabel.text = "값을 입력해주세요"
            return
        }
        
        guard let number = Int(text) else {
            validationLabel.text = "숫자를 입력해주세요"
            return
        }
        
        if number < 0 || number > 1000000 {
            validationLabel.text = "0 ~ 1,000,000 사이의 숫자를 입력해주세요"
            return
        }
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        validationLabel.text = formatter.string(for: number)
    }
}

