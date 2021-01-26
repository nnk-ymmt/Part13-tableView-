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
    var fruit: Fruit?
    var fruitIndex: IndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let fruit = fruit {
            textField.text = fruit.name
        }
    }

    @IBAction private func saveAction(_ sender: Any) {
        fruit = Fruit(name: textField.text ?? "", isChecked: fruit?.isChecked ?? false)
        let identifier = mode == Mode.edit ? "edit" : "save"
        performSegue(withIdentifier: identifier, sender: sender)
    }
}
