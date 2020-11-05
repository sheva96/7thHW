//
//  ContactsTableViewController.swift
//  7thHW
//
//  Created by Евгений Шевченко on 03.11.2020.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    //    var employees: [Employee]!
    
    let employees = DataSource.getEmployees()
    
    override func viewDidLoad() {
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return employees.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emailCell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
        let phoneCell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
        
        let employee = employees[indexPath.section]
        
        
        emailCell.textLabel?.text = employee.email
        emailCell.imageView?.image = UIImage(systemName: "envelope")
        
        phoneCell.textLabel?.text = employee.phoneNumber
        phoneCell.imageView?.image = UIImage(systemName: "phone")
        
        if indexPath.row == 0 {
            return emailCell
        } else {
            return phoneCell
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(employees[section].name) \(employees[section].surname)"
    }
}
