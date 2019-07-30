import Foundation

class Meal {
    var name : String
    var happiness : Int
    var items = Array<MealItem>()
    
    init(name : String, happiness : Int) {
        self.name = name
        self.happiness = happiness
    }
    
    func allCalories() -> Double {
        var sum : Double = 0
        for item in items {
            sum += item.calories
        }
        return sum
    }
}
