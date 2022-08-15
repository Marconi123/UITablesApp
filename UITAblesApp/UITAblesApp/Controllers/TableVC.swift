//
//  TableVC.swift
//  UITAblesApp
//
//  Created by Владислав on 14.08.22.
//

import UIKit

final class TableVC: UITableViewController {
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return Data.people.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let person = Data.people[indexPath.section]
        switch indexPath.row {
            case 0: cell.textLabel?.text = person.email
            case 1: cell.textLabel?.text = person.phoneNumber
            default:
                return UITableViewCell()
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = Data.people[section]
        return person.name + "  " + person.surname
    }

    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as? UITableViewHeaderFooterView
        header?.contentView.backgroundColor = .lightGray
    }
}
