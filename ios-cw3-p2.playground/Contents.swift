var number1:Int = 1
var number2:Int = 2
func add (number1: Int, number2: Int) -> Int{
    return(number1 + number2)
}

var functionCall = add(number1: number1, number2: number2)
print("\(number1) + \(number2) = \(functionCall)")

import Foundation
func isValidPassword(password:String?) -> Bool {
    guard password != nil else { return false }
    
    // at least one uppercase,
    // at least one digit
    // at least one lowercase
    // 8 characters total
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: password)
}

isValidPassword(password: "Abcd1234")

func checkPassword(password1:String) -> String {
    if password1.count < 8{
        return "Password isnt valid"
    }
    else{
        return "Password is valid"
    }
}

checkPassword(password1: "Abhpojlkko")
