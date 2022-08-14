//
//  Properties.swift
//  UITAblesApp
//
//  Created by Владислав on 14.08.22.
//

import Foundation

final class Data {
    static var people:[Person] = []
    static var nameArray = ["Name1", "Name2", "Name3", "Name4", "Name5", "Name6", "Name7", "Name8"]
    static var surNameArray = ["surName1", "surName2", "surName3", "surName4", "surName5", "surName6", "surName7", "surName8"]
    static var emailArray = ["Name1@mail.ru", "Name2@mail.ru", "Name3@mail.ru", "Name4@mail.ru", "Name5@mail.ru", "Name6@mail.ru", "Name7@mail.ru", "Name8@mail.ru"]
    static var phoneArray = ["+375293456789", "+375299476537", "+375293443782", "+375293423459", "+375296538989", "+375253456329", "+375333453339", "+375293656779"]

    static func getPerson() -> Person? {
        if let name = nameArray.randomElement(),
           let surname = surNameArray.randomElement(),
           let email = emailArray.randomElement(),
           let phone = phoneArray.randomElement()
        {
            let person_ = Person(name: name, surname: surname, phoneNumber: phone, email: email)
            guard
                let nameIndex = nameArray.firstIndex(of: name),
                let surnameIndex = surNameArray.firstIndex(of: surname),
                let emailIndex = emailArray.firstIndex(of: email),
                let phoneIndex = phoneArray.firstIndex(of: phone) else { return nil }
            nameArray.remove(at: nameIndex)
            surNameArray.remove(at: surnameIndex)
            emailArray.remove(at: emailIndex)
            phoneArray.remove(at: phoneIndex)
            return person_
        }
        return nil
    }
    
    static func fillArray() {
        let number = min(nameArray.count, surNameArray.count, emailArray.count, phoneArray.count)
        for _ in 1...number {
            guard let personSingle = getPerson() else { return }
            people.append(personSingle)
        }
    }
}
