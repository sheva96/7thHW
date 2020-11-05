//
//  MainTabBarController.swift
//  7thHW
//
//  Created by Евгений Шевченко on 04.11.2020.
//

import UIKit

class MainTabBarController: UITabBarController {

    private let employees = DataSource.getEmployees()
    
    
    
    // Кучу всего перепробовал, все равно ничего не передаю (nil), пробовал уже и на один контроллер передавать. Подскажите, пожалуйста, что я не делаю не так?
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! NavigationController
        let employeesTableVC = navigationController.topViewController as! EmployeesTableViewController
        employeesTableVC.employees = employees
    }
    */
}
