//
//  Expanse.swift
//  ExpanseTracker
//
//  Created by Shahmaz on 18/12/24.
//

import Foundation

enum TypeOfExpanse {
    case Food
    case Education
    case medical
    case travel
    case house
}

enum ModeOfPayment {
    case card
    case cash
    case upi
}

class Expanse {
    var title: String
    var amount: Int
    var type: TypeOfExpanse
    var mode: ModeOfPayment
    
    init(title: String, amount: Int, type: TypeOfExpanse, mode: ModeOfPayment) {
        self.title = title
        self.amount = amount
        self.type = type
        self.mode = mode
    }
}

private var allMyExpanse: [Expanse] = [
    Expanse(title: "Semester Fees", amount: 30000, type: .Education, mode: .upi),
    Expanse(title: "New Year Shopping", amount: 2000, type: .Food, mode: .cash),
    Expanse(title: "Common Cold", amount: 450, type: .medical, mode: .cash)
]
