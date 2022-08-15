//
//  PersonalInformationVC.swift
//  UITAblesApp
//
//  Created by Владислав on 14.08.22.
//

import UIKit

final class PersonalInformationVC: UIViewController {
    var person: Person?

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Functions

    func setupUI() {
        guard let person = person else { return }
        nameLabel.text = "Name: \(person.name)"
        surnameLabel.text = "Surname: \(person.surname)"
        navigationItem.title = person.name + " " + person.surname
    }
}
