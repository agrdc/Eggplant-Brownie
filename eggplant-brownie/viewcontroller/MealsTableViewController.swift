//
//  MealsTableViewController.swift
//  eggplant-brownie
//
//  Created by Agnaldo Rodrigues de Carvalho on 29/07/19.
//  Copyright © 2019 Bilulo. All rights reserved.
//

import UIKit

class MealsTableViewController : UITableViewController {
    var meals : Array<Meal> = [Meal(name: "Sandubera", happiness: 4),
                               Meal(name: "Japa", happiness: 5)]
    
    // _ faz com que o nome do parametro meal fique oculto quando esse método for usado
    // addMeal(meal) ao invés de addMeal(meal:Meal)
    func addMeal(_ meal : Meal) {
        meals.append(meal)
        tableView.reloadData()
    }
    
    //executado antes de ir para próximo viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "addMeal") {
            let viewController = segue.destination as? ViewController
            viewController?.mealsTableViewController = self
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let meal = meals[index]
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
        return cell
    }
    
}
