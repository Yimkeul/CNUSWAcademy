import UIKit


func plusOne (x : Int) -> Int {
    return x+1
}

func multiply ( value x : Int , multiplier by : Int) -> Int{
    return plusOne(x: x) * by
}

print(multiply(value: 1, multiplier: 2))

//let simpleClousre = {(str : String) -> String in
//    return "Hello, \(str)"
//}
//let result = simpleClousre("Swift Closure")
//print(result)
//simpleClousre()

func performClosure (_: (String) -> (String)){
    let result = ("Swift CCC")
    print(result)
}

let simClosure = { (str : String) -> String in
    return "Hello , \(str)"
}

performClosure(simClosure)
