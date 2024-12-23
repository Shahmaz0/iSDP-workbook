/*:
## App Exercise - Progress Updates
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 In many cases you want to provide input to a function. For example, the progress function you wrote in the Functioning App exercise might be located in an area of your project that doesn't have access to the value of `steps` and `goal`. In that case, whenever you called the function, you would need to provide it with the number of steps that have been taken and the goal for the day so it can print the correct progress statement.
 
 Rewrite the function `progressUpdate`, only this time give it two parameters of type `Int` called `steps` and `goal`, respectively. Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.
 
 Call the function a number of times, passing in different values of `steps` and `goal`. Observe the printouts and make sure what is printed to the console is what you would expect for the parameters passsed in.
 */
func progressUpdate(steps: Int, goal: Int) {
    let tenPercent = goal / 10
    let fiftyPrecent = goal / 2
    let nintyPercent = goal * 9/10
    
    switch steps {
    case 0..<tenPercent:
        print("You are off to a good start!")
    case tenPercent..<fiftyPrecent:
        print("You are almost halfway there!")
    case fiftyPrecent..<nintyPercent:
        print("You are over halfway there!")
    case nintyPercent..<goal:
        print("You are almost there!")
    default:
        print("You beat your goal!")
    }
}

progressUpdate(steps: 5000, goal: 10000)
progressUpdate(steps: 1099, goal: 10000)
progressUpdate(steps: 10, goal: 10000)

//:  Your fitness tracking app is going to help runners stay on pace to reach their goals. Write a function called pacing that takes four `Double` parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat `goalTime`. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"
func pace(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) {
    let originalPace = totalDistance / goalTime
    let userPace = currentDistance/currentTime
    
    if (userPace > originalPace || userPace == originalPace) {
        print("Keep it up!")
    }else {
        print("You've got to push it just a bit harder!")
    }
}
pace(currentDistance: 1000, totalDistance: 2000, currentTime: 15, goalTime: 30)

/*:
[Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Return Values](@next)
 */
