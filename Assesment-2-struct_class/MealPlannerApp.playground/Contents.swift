import UIKit


//A Meal should have the following properties:
//• Name: representing the name of the meal (e.g.,
//“Omelet").
//• Calories: automatically sets the calorie count
//based on the meal name:
//• Omelet: 250 calories
//• Salad: 150 calories
//• Pasta: 500 calories
//• Fruit: 100 calories
//• Sandwich: 300 calories
//The calorie value should be determined based on the dish name, and users cannot directly modify the calorie count.
//Meals should behave independently when copied or modified, so that changing one meal should not aﬀect other meal instances
struct Meal{
    var name: String
    var calories: Int
    
    init(name: String) {
        self.name = name
        
        switch name {
        case "Omelet":
            self.calories = 250
        case "Salad":
            self.calories = 150
        case "Pasta":
            self.calories = 500
        case "Fruit":
            self.calories = 100
        case "Sandwich":
            self.calories = 300
        default :
            self.calories = 0
            print("Invalid meal name.")
        }
    }
}
//A Day represents a single day in the meal planner and must have the following properties:
//• Day Of The Week: representing the day (e.g.“Monday").
//• Meal Type: A Meal object (breakfast, lunch, dinner, snack)
//Days should behave independently when copied or modified,
//For example, if a user modifies Monday’s breakfast, it should not change Tuesday’s breakfast.

struct MealType{
    var breakfast: String
    var lunch: String
    var dinner: String
    var snack: String
    
    
    init(breakfast: String, lunch: String, dinner: String, snack: String) {
        self.breakfast = breakfast
        self.lunch = lunch
        self.dinner = dinner
        self.snack = snack
    }
}

struct Day{
    var dayOfTheWeek: String
    var mealType: Meal
    
}

class MealPlan{
    var name: String
    var day: Day
    var isActive: Bool
    
    init(name: String, day: Day, isActive: Bool) {
        self.name = name
        self.day = day
        self.isActive = isActive
    }
    
    func activate() {
        isActive = true
        print("Meal plan activated!")
    }
}

class StandardMealPlan: MealPlan{
    override func activate() {
        if isActive {
            print("Meal plan already activated!")
        }else{
            print("Not activated.")
    }
}
    
}









//struct MealTime{
//    var breakfirst: String
//    var lunch: String
//    var dinner: String
//    var snack: String
//    
//    init(breakfirst: String, lunch: String, dinner: String, snack: String) {
//        self.breakfirst = breakfirst
//        self.lunch = lunch
//        self.dinner = dinner
//        self.snack = snack
//    }
//    
//    var MealSchedule: String {
//        "BreakFirst: \(breakfirst), Lunch: \(lunch), Dinner: \(dinner), Snack: \(snack)"
//    }
//    
//}
//
//
//class Day{
//    var dayOfTheWeek: String
//    var mealTime: MealTime
//    
//    init(dayOfTheWeek: String, mealTime: MealTime) {
//        self.dayOfTheWeek = dayOfTheWeek
//        self.mealTime = mealTime
//    }
//    var printStatement:  String{
//        "Your meals for \(dayOfTheWeek) are: "
//    }
//    
//}
//
//
//let day = Day.init(dayOfTheWeek: "Tuesday", mealTime: MealTime(breakfirst: "Fruits", lunch: "Pasta" , dinner: "Omlet" , snack: "Sandwich"))
//
//print(day.printStatement + day.mealTime.MealSchedule)
//
