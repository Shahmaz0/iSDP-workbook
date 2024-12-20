//
//  ExpanseDataController.swift
//  ExpanseTracker
//
//  Created by Shahmaz on 18/12/24.
//

import Foundation

// Singleton Design Pattern

class ExpanseDataController {
    private var allMyExpanses: [Expanse] = []
    
    private init() {
        loadDummyData()
    }
    
    static var shared = ExpanseDataController()
    
    func loadDummyData() {
    
        allMyExpanses = [
            Expanse(title: "Semester Fees", amount: 30000, type: .Education, mode: .upi),
            Expanse(title: "New Year Shopping", amount: 2000, type: .Food, mode: .cash),
            Expanse(title: "Common Cold", amount: 450, type: .medical, mode: .cash)
        ]
    }
    
    func allExpanses() -> [Expanse] {
        return allMyExpanses
    }
    func allAmount() -> Double {
        var amount: Double = 0.0
        for index in allMyExpanses {
            amount += Double(index.amount)
        }
        return amount
    }
    
//    func amountCategorywise(type: String) -> Int {
//
//    }
    func expanseAtIndex(index: Int) -> Expanse{
        return allMyExpanses[index]
    }
    func deleteExpanseAtIndex(index: Int) -> Expanse {
        return allMyExpanses.remove(at: index)
    }
    func appendExpanse(newExpanse: Expanse) {
        allMyExpanses.append(newExpanse)
    }
    func changeExpanseAt(index: Int, with: Expanse) {
        allMyExpanses[index] = with
    }
    func insertExpanseAt(index: Int, newExpanse: Expanse) {
        allMyExpanses.insert(newExpanse, at: index)
    }
    func totalExpanses() -> Int{
        return allMyExpanses.count
    }
}
