// MARK: Fundamentals
/// This playground would introduce to the fundamentals of swift programming language in about an hour

import UIKit

var greeting = "Hello, playground"

// MARK: Creating Constants and Variables

var name = "Jovi"
name = "Joel"
let myName = "JoelJovi"
// myName = "" // if you try to change or assign value compiler throws: Cannot assign to value: 'myName' is a 'let' constant. so don't try to change the let constant.
print(myName)
// The print() function is helpful for learning and debugging, and shows some information about a variable

// MARK: Strings
// Swift’s strings start and end with double quotes:
// And they work great with emoji too:
let actor = "Leonardo 🏃‍♂️"
// If you want double quotes inside your string, place a backslash before them:
let quote = "He tapped a sign saying \"Believe\" and walked away."
// If you want a string that spans multiple lines, start and end with three double quotes, like this:
let movie = """
A day in
the life of an
Apple engineer
"""
// Swift provides many useful properties and methods for strings, including .count to read how many letters it has:

print(movie.count)

// There are also hasPrefix() and hasSuffix(), which lets us know whether a string starts or ends with specific letters:
print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))
// Important: Strings are case-sensitive in Swift, so that second check will return false.

// MARK: Integers
// Swift stores whole numbers using the type Int, which supports a range of standard mathematical operators:
let score = 10
let higherScore = score + 10
let halvedScore = score / 2
// It also supports compound assignment operators that modify variables in place:
var counter = 10
counter += 5
// Integers come with their own useful functionality, such as the isMultiple(of:) method:
let number = 120
print(number.isMultiple(of: 3))
// You can also make random integers in a specific range, like this:
let id = Int.random(in: 1...1000)
print(id)

// MARK: Decimals
// If you create a number with a decimal point, Swift will consider it a Double:
let scores = 3.0
// Swift considers Double to be a wholly different type of data to Int, and won’t let you mix them together.

// MARK: Boolean
// Swift uses the type Bool to store true or false:
let goodDogs = true
let gameOver = false
// You can flip a Boolean from true to false by calling its toggle() method:
var isSaved = false
isSaved.toggle()

// MARK: Joining Strings
// You can create strings out of other data using string interpolation: write a backslash inside your string, then place the name of a variable or constant inside parentheses, like this:
let singer = "Taylor"
let age = 26
let message = "I'm \(singer) and I'm \(age) years old."
print(message)

// MARK: Arrays
// Arrays store the same type of information. You can group items into an array like this:
var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]
// Each of those hold different kinds of data: one strings, one integers, and one decimals. When we read data from arrays we will get the appropriate type back - a String, an Int, or a Double:
print(colors[0])
print(readings[2])
// Tip: Make sure an item exists at the index you’re asking for, otherwise your code will crash – your app will just stop working.
// If your array is variable, you can use append() to add new items:
colors.append("Yellow")
// The type of data you add must match whatever was already in there.
// Arrays have useful functionality, such as .count to read how many items are in an array, or remove(at:) to remove one item at a specific index:
print(colors.count)
print(colors.remove(at: 3))
// You can check whether an array contains a particular item by using contains(), like this:
print(colors.contains("Yellow"))

// MARK: Dictionaries
// Dictionaries store multiple values according to a key we specify. For example, we could create a dictionary to store information about a person:
let employee = [
    "name": "Taylor",
    "job": "Singer"
]
// To read data from the dictionary, use the same keys you used when creating it:
print(employee["name"] ?? "")
print(employee["job", default: "Unknown"])
// The default value will be used if the key we’ve asked for doesn’t exist.

// MARK: Sets
// Sets are similar to arrays, except you can’t add duplicate items, and they don’t store items in a particular order.
// This makes a set of numbers:
var numberss = Set([1, 1, 3, 5, 7])
print(numberss)
// Remember, the set will ignore duplicate values, and it won’t remember the order used in the array.
// Adding items to a set is done by calling its insert() method, like this:
numberss.insert(10)
// Sets have one big advantage over arrays: using contains() on a set is effectively instant no matter how many items the set contains – even a set with 10,000,000 items will respond instantly.

// MARK: Enums
// An enum is a set of named values we can create and use to make our code more efficient and safer. For example, we could make an enum of weekdays like this:
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
// That calls the new enum Weekday, and provides five cases to handle the five weekdays.
// We can now make instances of that enum, then assign other possible cases to it:
var day = Weekday.monday
day = .friday

// MARK: Type Annotations
// You can try to force a specific type for a new variable or constant by using type annotation like this:
var names: String = "JoelJovi"
var scoredScores: Double = 0
// Without the : Double part Swift would infer that to be an Int, but we’re overriding that and saying it’s a Double.
// Here are some type annotations based on the types covered so far:
let player: String = "Roy"
var luckyNumber: Int = 10
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"]
var user: Dictionary<String, String> = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

// Arrays and dictionaries are so common that they have special syntax that is easier to write:
var TaylorAlbums: [String] = ["Red", "Fearless"]
var userDetails: [String: String] = ["id": "@twostraws"]

// Knowing the exact types of things is important for creating empty collections. For example, both of these create empty string arrays:
var teams: [String] = [String]()
var clues = [String]()

// Values of an enum have the same type as the enum itself, so we could write this:
enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light

// MARK: Conditions
// Use if, else, and else if statements to check a condition and run some code as appropriate:
let votingAge = 16

if votingAge < 12 {
    print("You can't vote")
} else if votingAge < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}
// We can use && to combine two conditions, and the whole condition will only be true if the two parts inside are true:
let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}
// Alternatively, || will make a condition be true if either subcondition is true.

// MARK: Switch Statements
// Swift lets us check a value against multiple conditions using switch/case syntax, like this:

enum Weather {
    case sunny, rainy, windy
}

var foreCast = Weather.sunny

switch foreCast {
    
case .sunny:
    "Have a nice day"
case .rainy:
    "Pack an umbrella"
//case .windy:
//    "Be careful"
default:
    "should be okay"
}
// switch statements must be exhaustive: all possible values must be handled so you can’t miss one by accident.

// MARK: Ternary Condition Operator
// The ternary operator lets us check a condition and return one of two values: something if the condition is true, and something if it’s false:
let voteAge = 18
let canVote = voteAge >= 18 ? "Yes" : "No"
// When that code runs, canVote will be set to “Yes” because age is set to 18.

// MARK: Loops
// Swift’s for loops run some code for every item in a collection, or in a custom range. For example:
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os).")
}
// You can also loop over a range of numbers:
for i in 1...10 {
    print("5 x \(i) is \(5 * i)")
}
for i in 1...5 {
    print("2 x \(i) is \(2 * i)")
}

// 1...10 contains the values 1 through 10 inclusive. If you want to exclude the final number, use ..< instead:
for i in 1..<11 {
    print(" 7 x \(i) is \(7 * i)")
}
// Tip: If you don’t need the loop variable, use _:

var lyric = "Haters gonna"

for _ in 1...1 {
    lyric += " hate"
}

print(lyric)

// There are also while loops, which execute their loop body until a condition is false, like this:
var count = 10

while count > 0 {
    print("\(count)…")
    count -= 1
}

print("Go!")
// You can use continue to skip the current loop iteration and proceed to the following one:
let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(file)")
}
// Alternatively, use break to exit a loop and skip all remaining iterations.

// MARK: Functions
// To create a new function, write func followed by your function’s name, then add parameters inside parentheses:
func printTimesTables(number: Int) {
    for i in 1...10 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

// We need to write number: 5 at the call site, because the parameter name is part of the function call.

// To return data from a function, tell Swift what type it is, then use the return keyword to send it back. For example, this returns a dice roll:
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)
// If your function contains only a single line of code, you can remove the return keyword:
func rollDicee() -> Int {
    Int.random(in: 1...6)
}

// MARK: Retruning Multiple values from functions
// Tuples store a fixed number of values of specific types, which is a convenient way to return multiple values from a function:
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let newUser = getUser()
print("UserFullName is: \(newUser.firstName) \(newUser.lastName)")

// If you don’t need all the values from the tuple you can destructure the tuple to pull it apart into individual values, then _ to tell Swift to ignore some:
let (firstName, _) = getUser()
print("Name: \(firstName)")

// MARK: Customizing parameter labels
// If you don’t want to pass a parameter’s name when calling a function, place an underscore before it:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let results = isUppercase(string)

// An alternative is to write a second name before the first: one to use externally, and one internally:
func printTimesTables(for number: Int) {
    for i in 1...10 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 6)
// In that code for is used externally, and number is used internally.

// MARK: Providing default values for parameters
// We can provide default parameter values by writing an equals after the type then providing a value, like this:
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}
// Now we can call greet() in two ways:
greet("Tim", formal: true)
greet("Taylor")

// MARK: Handling errors in functions
// To handle errors in functions you need to tell Swift which errors can happen, write a function that can throw errors, then call it and handle any problems.

// First, define the errors that can occur:
enum PasswordError: Error {
    case short, obvious
}

// Next, write a function that can throw errors. This is done by placing throws into the function’s type, then by using throw to trigger specific errors:
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}
// Now call the throwing function by starting a do block, calling the function using try, then catching errors that occur:

let passwordString = "12345"

do {
    let result = try checkPassword(passwordString)
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
// When it comes to catching errors, you must always have a catch block that can handle every kind of error.

// MARK: Closures
// You can assign functionality directly to a constant or variable like this:
let sayHello = {
    print("Hi there!")
}

sayHello()
// In that code, sayHello is a closure – a chunk of code we can pass around and call whenever we want. If you want the closure to accept parameters, they must be written inside the braces:
let sayHelloo = { (name: String) -> String in
    "Hi \(name)!"
}

// The in is used to mark the end of the parameters and return type – everything after that is the body of the closure itself.

// Closures are used extensively in Swift. For example, there’s an array method called filter() that runs all elements of the array through a test, and any that return true for the test get returned in a new array.

// We can provide that test using a closure, so we could filter an array to include only names that begin with T:
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

team.filter { (name: String) in
    return name.hasPrefix("T")
}

// Inside the closure we list the parameter filter() passes us, which is a string from the array. We also say that our closure returns a Boolean, then mark the start of the closure’s code by using in – after that, everything else is normal function code.

// MARK: Trailing closures and shorthand syntax
// Swift has a few tricks up its sleeve to make closures easier to read. Here’s some code that filters an array to include only names beginning with “T”:
let people = ["Gloria", "Suzanne", "Tiffany", "Tasha", "Samantha", "Anthony", "Key", "Jona"]

let onlyS = people.filter({ (name: String) -> Bool in
    return name.hasPrefix("S")
})

print(onlyS)

// Immediately you can see that the body of the closure has just a single line of code, so we can remove return:
let onlyG = people.filter({ (name: String) -> Bool in
    name.hasPrefix("T")
})

// filter() must be given a function that accepts one item from its array, and returns true if it should be in the returned array.

// Because the function we pass in must behave like that, we don’t need to specify the types in our closure. So, we can rewrite the code to this:
let onlyA = people.filter({ name in
    name.hasPrefix("A")
})
// We can go further using special syntax called trailing closure syntax, which looks like this:
let onlyK = people.filter { name in
    name.hasPrefix("K")
}
// Finally, Swift can provide short parameter names for us so we don’t even write name in any more, and instead rely on a specially named value provided for us: $0:
let onlyJ = people.filter {
    $0.hasPrefix("J")
}

// MARK: Structs
// Structs let us create our own custom data types, complete with their own properties and methods:
struct Album {
    let title: String
    let artist: String
    var isReleased = true

    func printSummary() {
        print("\(title) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()
// When we create instances of structs we do so using an initializer – Swift lets us treat our struct like a function, passing in parameters for each of its properties. It silently generates this memberwise initializer based on the struct’s properties.
/* Class is a reference type where as Struct is a value type
 Reference type: A reference will be created and doesn't copy the data. So when we change one instance other instances will also get changed
 Value Type: A unique copy will be created and the data doesn't change
 EX: Me you Manager and Phone Number
 In Ref: I gave my Number to you written on a piece of paper, You shared it with your manager and Your manager doesn't make a note of it, But instead when he requires my no he'll contact you and when you change the digit in my number, My data is also changed.
 In Value : Same scenario but now the manager will make a note of Number, so  a seperate copy of it is created. Now unique copy is there and Number  change in one place doesn't  change the value in another place.
 */
// If you want to have a struct’s method change one of its properties, mark it as mutating:

// The mutating keyword allows the method to mutate (modify) the struct's properties.
struct Person {
    var name: String = "Joel"
    var age: Int = 30
    
    mutating func celebrateBirthday() {
        age += 1
        print("Happy Birthday. You age is \(age)")
    }
}

var person1 = Person()
person1.celebrateBirthday()

// MARK: Computed properties
// A computed property calculates its value every time it’s accessed. For example, we could write an Employee struct that tracks how many days of vacation remained for that employee:
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
    
    var vacationsRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
// To be able to write to vacationRemaining we need to provide both a getter and a setter:
// newValue is provided by Swift, and stores whatever value the user was assigning to the property.

// MARK: Property observers
// Property observers are pieces of code that run when properties change: didSet runs when the property just changed, and willSet runs before the property changed.
// We could demonstrate didSet by making a Game struct print a message when the score changes:

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

// MARK: Custom initializers
// Initializers are special functions that prepare a new struct instance to be used, ensuring all properties have an initial value.

// Swift generates one based on the struct’s properties, but you can create your own:
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
// Important: Initializers don’t have func before them, and don’t explicitly return a value.

// MARK: Access control
// Swift has several options for access control inside structs, but four are the most common:

// Use private for “don’t let anything outside the struct use this.”
// Use private(set) for “anything outside the struct can read this, but don’t let them change it.”
// Use fileprivate for “don’t let anything outside the current file use this.”
// Use public for “let anyone, anywhere use this.”
// For example:
struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
// Because we used private(set), reading funds from outside the struct is fine but writing isn’t possible.

/*
 Access controls in iOS Swift determine the visibility and accessibility of classes, structures, properties, methods, and other code elements within your application. They help enforce encapsulation and protect sensitive data by specifying which parts of your code can be accessed from other parts of your code or from external modules. iOS Swift provides five levels of access controls:

 Open: The least restrictive access level, open, allows entities to be accessed and subclassed from any source file, including external modules. It is typically used for framework or library interfaces that are meant to be overridden or extended by other modules.
 Public: The public access level allows entities to be accessed from any source file within the module in which they are defined, as well as from other modules that import the module where the entity is defined. However, it doesn't allow subclassing or overriding of methods and properties.
 Internal: The internal access level (default if none is specified) allows entities to be accessed from any source file within the module in which they are defined, but not from outside the module. It is suitable for most app development scenarios, as it provides access within the module while keeping the implementation details hidden from external modules.
 File Private: The fileprivate access level restricts the use of an entity to its own defining source file. It allows access within the same file for implementing details that shouldn't be exposed outside of the file. It is useful for organizing and encapsulating code within a single file.
 Private: The most restrictive access level, private, limits the use of an entity to its own enclosing declaration scope. It is useful for restricting access to implementation details within a particular context, such as a method or a property.
 */
// Here's an example demonstrating the use of access controls in iOS Swift:

public class MyClass {
    private var privateProperty = 10
    fileprivate var fileprivateProperty = 20
    internal var internalProperty = 30
    public var publicProperty = 40

    private func privateMethod() {
        // Implementation goes here
    }

    public func publicMethod() {
        // Implementation goes here
    }
}

fileprivate class AnotherClass: MyClass {
    override internal func publicMethod() {
        super.publicMethod()
        // Additional implementation goes here
    }
}

/*
 In the example above, MyClass is defined with different access levels for its properties and methods. The privateProperty and privateMethod can only be accessed within the MyClass declaration, while fileprivateProperty can be accessed within the same source file. The internalProperty can be accessed within the module, and publicProperty can be accessed from anywhere.

 The publicMethod is accessible from any source file and can be overridden. In the AnotherClass subclass, we override the publicMethod using the internal access level.

 By using access controls effectively, you can ensure that your code is encapsulated, modular, and provides the appropriate level of visibility to other parts of your application or external modules.
 */

// MARK: Static properties and methods
// Swift supports static properties and methods, allowing you to add a property or method directly to the struct itself rather than to one instance of the struct:
struct AppData {
static let version = "1.3 beta 2"
static let settings = "settings.json"
}
// Using this approach, everywhere we need to check or display something like the app’s version number we can read AppData.version.

// MARK: Classes
// Classes let us create custom data types, and are different from structs in five ways.

// The first difference is that we can create classes by inheriting functionality from other classes:
class Employees {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employees {
    func work() {
        print("I'm coding for \(hours) hours.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()
// If a child class wants to change a method from a parent class, it must use override:
func printSummary(hours: Int) {
    print("I spend \(hours) hours a day searching Stack Overflow.")
}

// The second difference is that initializers are more tricky with classes. There’s a lot of complexity here, but there are three key points:

// Swift won’t generate a memberwise initializer for classes.
// If a child class has custom initializers, it must always call the parent’s initializer after it has finished setting up its own properties.
// If a subclass doesn’t have any initializers, it automatically inherits the initializers of its parent class.
// For example:
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

// super allows us to call up to methods that belong to our parent class, such as its initializer.

// The third difference is that all copies of a class instance share their data, meaning that changes you make to one will automatically change other copies.

// For example:

class Singer {
    var name = "Adele"
}

var singer1 = Singer()
var singer2 = singer1
singer2.name = "Justin"
print(singer1.name)
print(singer2.name)

// That will print “Justin” for both – even though we only changed one of them, the other also changed. In comparison, struct copies don’t share their data.

// The fourth difference is that classes can have a deinitializer that gets called when the last reference to an object is destroyed.

// That will print “Justin” for both – even though we only changed one of them, the other also changed. In comparison, struct copies don’t share their data.

// The fourth difference is that classes can have a deinitializer that gets called when the last reference to an object is destroyed.
// So, we could create a class that prints a message when it’s created and destroyed:

class GenUser {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = GenUser(id: i)
    print("User \(user.id): I'm in control!")
}

// The final difference is that classes let us change variable properties even when the class itself is constant:
class User {
    var name = "Paul"
}

let editedUser = User()
editedUser.name = "Hudson"
print(editedUser.name)
// As a result of this, classes don’t need the mutating keyword with methods that change their data.
/*
 In iOS Swift, both classes and structures are used to define custom data types. They have similarities, but also some key differences. Here are the main differences between classes and structures in iOS Swift:

 Inheritance: Classes support inheritance, which means one class can inherit properties and methods from another class. In contrast, structures do not support inheritance. You cannot create a subclass of a structure.
 Reference vs. Value Types: Classes are reference types, meaning that when you assign a class instance to a variable or pass it as a parameter, you are actually working with a reference to the same instance in memory. In contrast, structures are value types. When you assign a structure instance to a variable or pass it as a parameter, a copy of the structure is made, and you are working with an independent instance.
 Mutability: Class instances can be modified even if they are declared as constants (let). This is because the constant holds a reference to the instance, not the instance itself. In contrast, structure instances are immutable when declared as constants (let), and their properties cannot be modified.
 Identity Comparison: Classes have identity, so you can compare class instances to check if they refer to the same object using the === operator. Structures, being value types, do not have identity comparison. Instead, you compare their property values to determine equality.
 Initialization: Classes can have designated and convenience initializers, allowing you to customize the initialization process. Structures, on the other hand, automatically receive a memberwise initializer that initializes all their properties.
 Memory Management: Classes use automatic reference counting (ARC) for memory management. The system keeps track of how many references exist to a class instance and deallocates the memory when the instance is no longer referenced. Structures, being value types, are managed automatically by the system and do not require manual memory management.
 In general, you would use classes when you need reference semantics, inheritance, or more complex object-oriented programming features. Structures are suitable for simpler data types, such as representing a point, size, or other small value types, and when you want value semantics or thread safety.
 */
// Example

class MyClasss {
    var value: Int

    init(value: Int) {
        self.value = value
    }
}

struct MyStruct {
    var value: Int
}

var obj1 = MyClasss(value: 10)
var obj2 = obj1
obj2.value = 20
print(obj1.value) // Output: 20 (Classes are reference types)

var struct1 = MyStruct(value: 10)
var struct2 = struct1
struct2.value = 20
print(struct1.value) // Output: 10 (Structures are value types)

// MARK: Protocols
// Protocols define functionality we expect a data type to support, and Swift ensures our code follows those rules.
// For example, we could define a Vehicle protocol like this:
protocol Vehicles {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// That lists the required methods for this protocol to work, but doesn’t contain any code – we’re specifying only method names, parameters, and return types.

// Once you have a protocol you can make data types conform to it by implementing the required functionality. For example, we could make a Car struct that conforms to Vehicle:
struct Cars: Vehicles {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
}

// All the methods listed in Vehicle must exist exactly in Car, with the same name, parameters, and return types.

// Now you can write a function that accepts any kind of type that conforms to Vehicle, because Swift knows it implements both estimateTime() and travel():
func commute(distance: Int, using vehicle: Vehicles) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Cars()
commute(distance: 100, using: car)

// Protocols can also require properties, so we could require properties for how many seats vehicles have and how many passengers they currently have:
protocol Vehicless {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// That adds two properties: one marked with get that might be a constant or computed property, and one marked with get set that might be a variable or a computed property with a getter and setter.

// Now all conforming types must add implementations of those two properties, like this for Car:

let namee = "Car"
var currentPassengers = 1

// Tip: You can conform to as many protocols as you need, just by listing them separated with a comma.

/*
 What is a protocol in Swift?
 A protocol in Swift is a blueprint that defines a set of methods, properties, and other requirements that a class, structure, or enumeration can conform to. It defines a contract for what methods and properties should be implemented by conforming types.
 What are the benefits of using protocols?
 Protocols allow for code reuse and modularity by defining a common interface that multiple types can conform to.
 They enable polymorphism and allow objects of different types to be treated uniformly if they conform to the same protocol.
 Protocols facilitate protocol-oriented programming (POP), which promotes composition and protocol inheritance over traditional class inheritance.
 How do you define a protocol in Swift?
 A protocol can be defined using the protocol keyword, followed by the protocol name and a set of requirements within curly braces. Here's an example:
 */
protocol MyProtocol {
    var someProperty: Int { get set }
    func someMethod()
}

/*
 What is protocol conformance?
 Protocol conformance refers to a type (class, structure, or enumeration) adopting a protocol and implementing all the required properties and methods defined in the protocol. Conforming types provide their own implementation for the requirements specified in the protocol.
 Can a type conform to multiple protocols?
 Yes, a type can conform to multiple protocols by listing the protocols it conforms to, separated by commas. For example:
 */
struct MyStructs: Protocol1, Protocol2 {
    // Implementation of required properties and methods
}

/*
 What are optional protocol requirements?
 Optional protocol requirements are defined using the @objc attribute. Conforming types can choose to implement these requirements, but it is not mandatory. Optional requirements can only be declared in protocols that inherit from the NSObjectProtocol protocol.
 What is protocol composition?
 Protocol composition allows you to combine multiple protocols into a single requirement. It is done using the & operator. For example:
 */
protocol Protocol1 {
    // Protocol 1 requirements
}

protocol Protocol2 {
    // Protocol 2 requirements
}

func someFunction(obj: Protocol1 & Protocol2) {
    // Function implementation
}

// MARK: Extensions
// Extensions let us add functionality to any type. For example, Swift’s strings have a method for trimming whitespace and new lines, but it’s quite long so we could turn it into an extension:
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quotes = "   The truth is rarely pure and never simple   "
let trimmed = quotes.trimmed()
// If you want to change a value directly rather than returning a new value, mark your method as mutating like this:
extension String {
    mutating func trim() {
        self = self.trimmed()
    }
}

quotes.trim()

// Extensions can also add computed properties to types:
extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

// The components(separatedBy:) method splits a string into an array of strings using a boundary of our choosing, which in this case is new lines.

// We can now use that property with all strings:

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
Can't stop, won't stop dancing
"""

print(lyrics.lines.count)

// MARK: Protocol extensions
// Protocol extensions extend a whole protocol to add computed properties and method implementations, so any types conforming to that protocol get them.

// For example, Array, Dictionary, and Set all conform to the Collection protocol, so we can add a computed property to all three of them like this:
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

// Now we can put it to use:
let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

// This approach means we can list required methods in a protocol, then add default implementations of those inside a protocol extension. All conforming types then get to use those default implementations, or provide their own as needed.
/*
 What is a protocol extension?
 A protocol extension allows you to provide default implementations for methods and properties defined in a protocol. Conforming types can inherit these default implementations without explicitly implementing them. Protocol extensions promote code reusability and provide default behavior.
 Can you inherit from a protocol?
 No, Swift does not support inheritance from protocols. However, protocols can inherit other protocols by specifying them in the protocol declaration using the : operator.
 What is protocol-oriented programming (POP)?
 Protocol-oriented programming is a programming paradigm that emphasizes composition, protocol inheritance, and protocol extensions over traditional class inheritance. It promotes code reuse, modularity, and flexibility by designing systems around protocols and value types.
 */

// MARK: Optionals
// Optionals represent the absence of data – for example, they distinguish between an integer having the value 0, and having no value at all.

// To see optionals in action, think about this code:

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]
/*
 That attempts to read the value attached to the key “Peach”, which doesn’t exist, so this can’t be a regular string. Swift’s solution is called optionals, which means data that might be present or might not.

 An optional string might have a string waiting inside for us, or there might be nothing at all – a special value called nil, that means “no value”. Any kind of data can be optional, including Int, Double, and Bool, as well as instances of enums, structs, and classes.

 Swift won’t let us use optional data directly, because it might be empty. That means we need to unwrap the optional to use it – we need to look inside to see if there’s a value, and, if there is, take it out and use it.

 Swift gives us several ways of unwrapping optionals, but the one you’ll see most looks like this:
 */
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}
// That reads the optional value from the dictionary, and if it has a string inside it gets unwrapped – the string inside gets placed into the marioOpposite constant, and isn’t optional any more. Because we were able to unwrap the optional, the condition is a success so the print() code is run.

// MARK: Unwrapping optionals with guard
// Swift has a second way of unwrapping optionals, called guard let, which is very similar to if let except it flips things around: if let runs the code inside its braces if the optional had a value, and guard let runs the code if the optional didn’t have a value.
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}
// If you use guard to check a function’s inputs are valid, Swift requires you to use return if the check fails. However, if the optional you’re unwrapping has a value inside, you can use it after the guard code finishes.

// Tip: You can use guard with any condition, including ones that don’t unwrap optionals.

// MARK: Nil coalescing
// Swift has a third way of unwrapping optionals, called the nil coalescing operator – it unwraps an optional and provides a default value if the optional was empty:
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"
// The nil coalescing operator is useful in many places optionals are created. For example, creating an integer from a string returns an optional Int? because the conversion might have failed. Here we can use nil coalescing to provide a default value:
let input = ""
let defaultNumber = Int(input) ?? 0
print(defaultNumber)

// MARK: Optional chaining
// Optional chaining reads optionals inside optionals, like this:
let lannisters = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = lannisters.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")

// Optional chaining is there on line 2: a question mark followed by more code. It allows us to say “if the optional has a value inside, unwrap it then…” and add more code. In our case we’re saying “if we got a random element from the array, uppercase it.”

// MARK: Optional try?
// When calling a function that might throw errors, we can use try? to convert its result into an optional containing a value on success, or nil otherwise.

// Here’s how it looks:
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

// The getUser() function will always throw networkFailed, but we don’t care what was thrown – all we care about is whether the call sent back a user or not.
