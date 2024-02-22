//
//  NumberViewModel.swift
//  SeSAC4MVVM
//
//  Created by Minho on 2/23/24.
//

import Foundation

class NumberViewModel {
    
    var numberText = Observable("")
    var validationResult = Observable("")
    
    init() {
        numberText.bind { value in
            self.validation(text: value)
        }
    }
    
    private func validation(text: String) {
        
        guard !text.isEmpty else {
            validationResult.text = "값을 입력해주세요"
            return
        }
        
        guard let number = Int(text) else {
            validationResult.text = "숫자를 입력해주세요"
            return
        }
        
        if number < 0 || number > 1000000 {
            validationResult.text = "0 ~ 1,000,000 사이의 숫자를 입력해주세요"
            return
        }
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        validationResult.text = formatter.string(for: number)!
    }
}
