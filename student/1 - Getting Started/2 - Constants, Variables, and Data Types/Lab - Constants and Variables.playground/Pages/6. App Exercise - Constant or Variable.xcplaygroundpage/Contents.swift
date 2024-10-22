/*:
## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
- Name: The user's name
- Age: The user's age
- Number of steps taken today: The number of steps that a user has taken today
- Goal number of steps: The user's goal for number of steps to take each day
- Average heart rate: The user's average heart rate over the last 24 hours
 */
let name = "Shahma Ansari"
print("name: \(name)")
print("Here name of the user in our fitness app will be constant, so i declared the name as constant.")

var age = 22
print("age: \(age)")
print("Age of the user will be changing each year that's why i declared it as a variable")

var stepsToday = 4000
print("stepsToday: \(stepsToday)")
print("There might be same or different steps each day that's why i declared it as variable")

let dailyGoal = 5000
print("dailyGoal: \(dailyGoal)")
print("The goal of steps for each day is 5000 which is constant so it is declared as constant")

var heartRate = 90
print("heartRate: \(heartRate)")
print("Heart rate is not constant so it will be decalerd as variable")
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
