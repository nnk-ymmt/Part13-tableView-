//
//  InputViewController.swift
//  Part13-tableView-
//
//  Created by 山本ののか on 2021/01/12.
//

import UIKit

final class InputViewController: UIViewController {

    @IBOutlet private weak var textField: UITextField!

    var fruit: Fruit?

    @IBAction private func saveAction(_ sender: Any) {
        fruit = Fruit(name: textField.text ?? "", isChecked: false)
        performSegue(withIdentifier: "save", sender: sender)
    }
}
