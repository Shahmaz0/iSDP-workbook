
//:  You decide that you'll divide your shed into two rooms. You want to know if dividing it equally will leave enough room for some of your larger storage items. Create a `roomArea` constant that is the result of dividing `area` in half. Print out the result.
let area = 500
let roomArea = area / 2
print(roomArea)
//:  Create a `perimeter` constant whose value equals `width` plus `width` plus `height` plus `height`, then print out the result.
let width = 10
let height = 20

let peremeter = width + width + height
print(peremeter)

//:  Print what you would expect the result of integer division of 10 divided by 3 to be. Create a constant, `integerDivisionResult` that is the result of 10 divided by 3, and print the value.
let integerDivisionResult = 10 / 3
print(integerDivisionResult)
//:  Now create two constants, `double10` and `double3`, set to 10 and 3, and declare their types as `Double` values. Declare a final constant `divisionResult` equal to the result of `double10` divided by `double3`. Print the value of `divisionResult`. How does this differ from the value when using integer division?
let double10: Double = 10
let double3: Double = 3
let divisionResult = double10 / double3
print(divisionResult)

print("In integer division, value after the division is round off to floor value of integer whereas in this double division, giving exact float value")


/*:
 Given the value pi (3.1415927), create a `radius` constant with a value of 5.0, then calculate the diameter and circumference of the circle using the following equations, and print the results:
 
 *diameter = 2 * radius*
 
 *circumference = 2 * pi * radius.*
 */
let pi = 3.1415927
let radius = 5.0
print("Diameter is \(2 * radius)")
print("Circumference is \(2 * pi * radius)")

//:  Create an integer constant. Using the modulus operator, set its value to the remainder of 12 divided by 5.
let num: Int = 12 % 5
print(num)
//:  Create two integer constants, `even` and `odd` and set them to any even integer and any odd integer, respectively. For each, print the remainder of dividing the value by 2. Looking at the results, how do you think you could use the remainder operator to determine if an integer is even or odd?
let even: Int = 16
let odd: Int = 15
let reminderOdd = 15 & 2
let reminderEven = 15 & 2

print("For odd \(reminderOdd), for even \(reminderEven)")
/*:
page 1 of 8  |  [Next: App Exercise - Fitness Calculations](@next)
 */
