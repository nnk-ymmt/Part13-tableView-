//
//  ViewController.swift
//  Part13-tableView-
//
//  Created by 山本ののか on 2021/01/08.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.register(TableViewCell.loadNib(), forCellReuseIdentifier: TableViewCell.reuseIdentifier)
            tableView.isHidden = true
        }
    }

    enum Fruit {
        case apple
        case orange
        case banana
        case pineapple

        var stringName: String {
            switch self {
            case .apple: return "りんご"
            case .orange: return "みかん"
            case .banana: return "バナナ"
            case .pineapple: return "パイナップル"
            }
        }

        var check: Bool {
            switch self {
            case .apple: return false
            case .orange: return true
            case .banana: return false
            case .pineapple: return true
            }
        }
    }

    let fruits: [Fruit] = [Fruit.apple, Fruit.orange, Fruit.banana, Fruit.pineapple]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        tableView.isHidden = false
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        let fruit = fruits[indexPath.item]
        cell.configure(name: fruit.stringName, check: fruit.check)
        return cell
    }
}
