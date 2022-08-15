//
//  Properties.swift
//  UITAblesApp
//
//  Created by Владислав on 14.08.22.
//

import Foundation

final class Data {
    static var people: [Person] = []
    static var nameArray = ["Vlad", "Andrey", "Sergey", "Evgeny", "Semen", "Ilya", "Slavik", "Vadim"]
    static var surNameArray = ["Medvedev", "Ivanov", "Petrov", "Sidorov", "Marconi", "Hotfix", "Delayed", "Suspended"]
    static var emailArray = ["cool@mail.ru", "great@mail.ru", "trump@mail.ru", "snoopdog@mail.ru", "killer@mail.ru", "satisfaction@mail.ru", "annoying@mail.ru", "Name8@mail.ru"]
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
        for _ in 1 ... number {
            guard let personSingle = getPerson() else { return }
            people.append(personSingle)
        }
    }
}
