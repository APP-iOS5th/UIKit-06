

func isThereAMatch(listOfNumbers: [Int], condition: (Int) -> Bool) -> Bool {
    for item in listOfNumbers {
        if condition(item) {
            return true
        }
    }
    return false
}

func oddNumber(number: Int) -> Bool {
    return (number % 2) > 0
}

let numbersList = [2, 4, 6, 7]
isThereAMatch(listOfNumbers: numbersList, condition: oddNumber)



//func makePi() -> (() -> Double) {
//    func generatePi() -> Double {
//        return 22.0 / 7.0
//    }
//    return generatePi
//}
//
//let pi = makePi()
//print(pi())
//func calculateMonthlyPayments(carPrice: Double, downPayment: Double,
//                              interestRate: Double, paymentTerm: Double) -> Double {
//    func loanAmount() -> Double {
//        return carPrice - downPayment
//    }
//    func totalInterest() -> Double {
//        return interestRate * paymentTerm
//    }
//    func numberOfMonths() -> Double {
//        return paymentTerm * 12
//    }
//    return ((loanAmount() + (loanAmount() * totalInterest() / 100)) / numberOfMonths())
//}
//
//
//calculateMonthlyPayments(carPrice: 50000, downPayment: 5000, interestRate: 3.5, paymentTerm: 7)
//

//func serviceCharge() {
//    let mealCost = 50
//    let serviceCharge = mealCost / 10
//    print("Service charge is \(serviceCharge)")
//}
//
//serviceCharge()
//
//func serviceCharge(mealCost: Int) -> Int {
//    return mealCost / 10
//}
//
//let serviceChargeAmount = serviceCharge(mealCost: 50)
//print(serviceChargeAmount)
//
//// custom argument label
//func serviceCharge(_ mealCost: Int) -> Int {
//    return mealCost / 10
//}
//
//let serviceChargeAmount2 = serviceCharge(50)
//print(serviceChargeAmount2)



//let theAnswerToTheUltimateQuestion = 42
//
////var greeting = "Hello, playground"
//
//var restaurantRating: Double = 3
////restaurantRating = "Good"
//
//let a = 12
//let b = 12.0
//let c = Double(a) + b
//
//var d = 1
//d += 2 // d = d + 2
//d -= 1 // d = d - 1
//
//let greeting = "Good" + " Morning"
//
//let rating = 3.5
//var ratingResult = "The restaurant rating is " + String(rating)
//ratingResult = "The restaurant rating is \(rating)"
//print(ratingResult)
//
//let isRestaurantOpen = true
//
//if isRestaurantOpen {
//    print("Restaurant is open.")
//}
//
//let isRestaurantFound = false
//
//if !isRestaurantFound {
//    print("Restaurant was not found")
//}
//
//let drinkingAgeLimit = 21
//let customerAge = 23
//
//if customerAge < drinkingAgeLimit {
//    print("Under age limit")
//} else {
//    print("Over age limit")
//}
//
//let trafficLightColor = "Yellow"
//
//switch trafficLightColor {
//case "Red":
//    print("Stop")
//case "Yellow":
//    print("Caution")
//case "Green":
//    print("Go")
//default:
//    print("Invalid color")
//}
//
//var spouseName: String?
//print(spouseName ?? "No value in spouseName")
//
//spouseName = "Nia"
//print(spouseName ?? "No value in spouseName")
//
//if let spouseTempVar = spouseName {
//    let greeting =  "Hello, " + spouseTempVar
//    print(greeting)
//} else {
//    print("No one")
//}
//
//let myRange = 10...20
//let myRange2 = 10..<20
//
//for number in myRange {
//    print(number)
//}
//
//for number in myRange2 {
//    print(number)
//}
//
//for number in (0...5).reversed() {
//    print(number)
//}
//
//var y = 50
//while y < 50 {
//    y += 5
//    print("y is \(y)")
//}
//
////var x = 50
////repeat {
////    x += 5
////    print("x is \(x)")
////} while x < 50
//print("-----------Array------------")
//
//var shoppingList = ["Egg", "Milk"]
//
//print(shoppingList.count)
//
//shoppingList.append("Cooking Oil")
//shoppingList = shoppingList + ["Chicken"]
//shoppingList.insert("Water", at: 1)
//
//shoppingList.remove(at: 1)
//let removeElement = shoppingList.removeLast()
//
//print("remove: \(removeElement)")
//
//print("-----------Dictionary------------")
//
//var contactList = ["Shah": "+6012345456789", "Aamir": "+02234546789"]
//print(contactList.count)
//print(contactList.isEmpty)
//
//contactList["Jane"] = "+0229876543"
//print(contactList["Shah"] ?? "No Value")
//
//var oldDictValue = contactList.removeValue(forKey: "Aamir")
//print(oldDictValue ?? "No Value")
//print(contactList.count)
//
//for (name, contactNumber) in contactList {
//    print("\(name): \(contactNumber)")
//}
//
//print("-----------Set------------")
//
//var movieGenres: Set = ["Horror", "Action", "Romantic Comedy"]
//
//print(movieGenres.count)
//print(movieGenres.isEmpty)
//
//movieGenres.insert("War")
//movieGenres.contains("War")
//
//var oldSetValue = movieGenres.remove("Action")
//print(oldSetValue ?? "No Value")
//
//for genre in movieGenres {
//    print(genre)
//}
//
//let movieGenres2: Set = ["SF", "War", "Fantasy"]
//
//movieGenres.union(movieGenres2)
//movieGenres.intersection(movieGenres2)
//var subSetMovieGenres = movieGenres.subtracting(movieGenres2)
//movieGenres.symmetricDifference(movieGenres2)
//
//movieGenres == movieGenres2
//subSetMovieGenres.isSubset(of: movieGenres)
//movieGenres.isSuperset(of: subSetMovieGenres)
