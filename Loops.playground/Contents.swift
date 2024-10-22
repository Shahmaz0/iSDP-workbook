import UIKit

// Define an item structure with name and price
struct Item {
    var name: String
    var pricePerUnit: Double
}

// List of 9 items
var items: [Item] = [
    Item(name: "Bread", pricePerUnit: 50),
    Item(name: "Rice", pricePerUnit: 100),
    Item(name: "Cheese", pricePerUnit: 150),
    Item(name: "Apple", pricePerUnit: 200),
    Item(name: "Banana", pricePerUnit: 70),
    Item(name: "Mango", pricePerUnit: 100),
    Item(name: "Milk", pricePerUnit: 68),
    Item(name: "Cheese", pricePerUnit: 100),
    Item(name: "Paneer", pricePerUnit: 300)
]


var inventory: [String: [String: Int]] = [
    "Grocery": ["Bread": 2, "Rice": 3, "Cheese": 5],
    "Fruits": ["Apple": 12, "Banana": 2, "Mango": 2],
    "Dairy": ["Milk": 5, "Cheese": 2, "Paneer": 1]
]

var grandTotal: Double = 0


for (category, categoryItems) in inventory {
    var categoryTotal: Double = 0
    print("Category: \(category)")
    
    for (itemName, itemQuantity) in categoryItems {
    
        if let item = items.first(where: { $0.name == itemName }) {
            let totalPrice = item.pricePerUnit * Double(itemQuantity)
            categoryTotal += totalPrice
            print("\(itemName): \(itemQuantity) x \(item.pricePerUnit) = \(totalPrice)")
        }
    }
    
    print("Total for \(category): \(categoryTotal)\n")
    grandTotal += categoryTotal
}

print("Grand Total: \(grandTotal)")
