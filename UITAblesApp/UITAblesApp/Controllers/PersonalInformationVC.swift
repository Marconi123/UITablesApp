//
//  PersonalInformationVC.swift
//  UITAblesApp
//
//  Created by Владислав on 14.08.22.
//

import UIKit

class PersonalInformationVC: UIViewController {
    
    var person:Person?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }
    
    // MARK: - Functions
    
    func setupUI () {
        guard let person = person else { return }
        nameLabel.text = person.name
        surnameLabel.text = person.surname
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
