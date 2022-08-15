//
//  TableViewCotrnoller.swift
//  UITAblesApp
//
//  Created by Владислав on 14.08.22.
//

import UIKit

final class TableViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: - IBoutlets
    
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        Data.fillArray()
    }
    
    // MARK: - Functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = Data.people[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surname
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let infoVC = segue.destination as? PersonalInformationVC,
           let selectedIndexPath = tableView.indexPathForSelectedRow
        {
            infoVC.person = Data.people[selectedIndexPath.row]
        }
    }
}
