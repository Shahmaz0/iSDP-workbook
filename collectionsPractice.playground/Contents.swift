import Foundation

var users: [String: [String: Any]] = [
    "John": ["dailyStepGoal": 1500, "performaceLastFive": [Int](repeating: 0, count: 5)],
    "Mary": ["dailyStepGoal": 1500, "performaceLastFive": [Int](repeating: 0, count: 5)],
    "Rob": ["dailyStepGoal": 1500, "performaceLastFive": [Int](repeating: 0, count: 5)]
]

print(users)

// 1.

users["John"]!["performaceLastFive"]! = [Int](repeating: Int.random(in: 0...1500), count: 5)
print(users)

// 2.

//for (user, details) in users {
//    
//    users[user]?["performaceLastFive"]! += 1000
//}
//print(users)
//
//// 3.
//
//users.removeValue(forKey: "Rob")
//print(users)
