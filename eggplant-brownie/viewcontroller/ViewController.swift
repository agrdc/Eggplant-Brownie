//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Agnaldo Rodrigues de Carvalho on 23/07/19.
//  Copyright © 2019 Bilulo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet
    var nameField : UITextField?
    @IBOutlet
    var happinessField : UITextField?
    var mealsTableViewController : MealsTableViewController?
    
    @IBAction
    func add() {
        let nameText  = nameField?.text
        let happinessText = happinessField?.text
        if (nameText != nil && happinessText != nil) {
            if let happiness = Int(happinessText!) {
                let meal = Meal(name : nameText!, happiness : happiness)
                print("Eaten \(meal.name) with happiness \(meal.happiness)")
                mealsTableViewController?.addMeal(meal)
            }
        }
        navigationController?.popViewController(animated: true)
    }
}

