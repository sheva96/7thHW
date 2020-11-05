//
//  DetailViewController.swift
//  7thHW
//
//  Created by Евгений Шевченко on 03.11.2020.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var phoheNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var emlpoyee: Employee!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoheNumberLabel.text = "Phone number: \(emlpoyee.phoneNumber)"
        emailLabel.text = "Email: \(emlpoyee.email)"
        title = "\(emlpoyee.name) \(emlpoyee.surname)"
    }
}
