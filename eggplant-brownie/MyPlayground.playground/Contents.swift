import UIKit


let name = "Agnaldo"
let age = 27
let calories : Decimal = 3123.32323123123123
let caloriesArray = [3, 12.32, 4014, 12301, 333.33]

func sumCalories(caloriesArray : Array<Double>) -> Double {
    var total : Double = 0
    for c in caloriesArray {
        total += c
    }
    return total
}

for i in 0...(caloriesArray.count-1) {
    print(caloriesArray[i])
}

var calorieSum = sumCalories(caloriesArray: caloriesArray)
print("CalorieSum \(calorieSum)")


func calculaSoma(valores:Array<Double>) -> Double {
    var soma = 0.0
    for valor in valores {
        soma += valor
    }
    return soma
}




