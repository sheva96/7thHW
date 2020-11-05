//
//  DataSource.swift
//  7thHW
//
//  Created by Евгений Шевченко on 03.11.2020.
//

class DataSource {
    let names: Set<String> = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Monika",
        "Patrik",
        "Alex",
        "Olivia",
        "Emily"
    ]
    
    let surnames: Set<String> = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankins",
        "Young",
        "King",
        "Lewis",
        "Davis",
        "Walker",
        "Taylor"]
    
    let emails: Set<String> = [
    "aaa@company.com",
    "bbb@company.com",
    "ccc@company.com",
    "ddd@company.com",
    "eee@company.com",
    "fff@company.com",
    "ggg@company.com",
    "hhh@company.com",
    "iii@company.com",
    "jjj@company.com"
    ]
    
    let phoneNumbers: Set<String> = [
        "53415648",
        "65738742",
        "54324824",
        "64142443",
        "53229422",
        "53289231",
        "53232089",
        "52392382",
        "57443984",
        "53282821"
    ]
}

extension DataSource {
    static func getEmployees() -> [Employee] {

        let dataSource = DataSource()
        
        var employees: [Employee] = []
        
        var namesAndSurnames: [String: String] = [:]
        for (name, surname) in zip(dataSource.names, dataSource.surnames) {
            namesAndSurnames.updateValue(name, forKey: surname)
        }
        
        var emailsAndPhoneNumbers: [String: String] = [:]
        for (email, phoneNumber) in zip(dataSource.emails, dataSource.phoneNumbers) {
            emailsAndPhoneNumbers.updateValue(email, forKey: phoneNumber)
        }
        
        for (nameAndSurname, emailAndPhoneNumber) in zip(namesAndSurnames, emailsAndPhoneNumbers) {
            employees.append(Employee(
                                name: nameAndSurname.value,
                                surname: nameAndSurname.key,
                                phoneNumber: emailAndPhoneNumber.key,
                                email: emailAndPhoneNumber.value,
                                salary: Int.random(in: 1000...2000))
            )
        }
        return employees
    }
}
