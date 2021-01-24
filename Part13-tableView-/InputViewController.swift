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

    @IBOutlet private weak var textField: UITextField!

    var mode: Mode?
    var editItem: Fruit?
    private(set) var fruit: Fruit?
    var fruitIndex: IndexPath?
    var check: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let editItem = editItem {
            textField.text = editItem.name
        }
    }

    @IBAction private func saveAction(_ sender: Any) {
        fruit = Fruit(name: textField.text ?? "", isChecked: check ?? false)
        let identifier = mode == Mode.edit ? "edit" : "save"
        performSegue(withIdentifier: identifier, sender: sender)
    }
}
