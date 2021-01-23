//
//  InputViewController.swift
//  Part13-tableView-
//
//  Created by 山本ののか on 2021/01/12.
//

import UIKit

final class InputViewController: UIViewController {

    enum Mode {
        case input
        case edit
    }

    @IBOutlet weak var textField: UITextField!

    var mode: Mode?
    var editName: Fruit?
    private(set) var fruit: Fruit?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let editName = editName {
            textField.text = editName.name
        }
    }

    @IBAction private func saveAction(_ sender: Any) {
        fruit = Fruit(name: textField.text ?? "", isChecked: false)
        performSegue(withIdentifier: "save", sender: sender)
    }
}
