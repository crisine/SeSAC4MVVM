//
//  Observable.swift
//  SeSAC4MVVM
//
//  Created by Minho on 2/23/24.
//

import Foundation

class Observable {
    
    private var closure: ((String) -> Void)?
    
    var text: String {
        didSet {
            closure?(text)
        }
    }
    
    init(_ text: String) {
        self.text = text
    }
    
    public func bind(_ closure: @escaping (String) -> Void) {
        closure(text)
        self.closure = closure
    }
}
