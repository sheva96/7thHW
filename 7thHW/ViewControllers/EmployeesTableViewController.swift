//
//  EmployeesTableViewController.swift
//  7thHW
//
//  Created by Евгений Шевченко on 03.11.2020.
//

import UIKit


class EmployeesTableViewController: UITableViewController {
    
//    var employees: [Employee]!
    
    let employees = DataSource.getEmployees()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)

        let employee = employees[indexPath.row]
        cell.textLabel?.text = "\(employee.name) \(employee.surname)"
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! InfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailVC.emlpoyee = employees[indexPath.row]
    }
}

    
