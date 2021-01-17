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

//    let fruits: [Fruit] = [Fruit.apple, Fruit.orange, Fruit.banana, Fruit.pineapple]
//    var fruitsData: [String] = ["りんご", "みかん", "バナナ", "パイナップル"]
    private var fruitsData: [Fruit] = [
        Fruit(name:"りんご", isChecked: false),
        Fruit(name:"みかん", isChecked: true),
        Fruit(name:"バナナ", isChecked: false),
        Fruit(name:"パイナップル", isChecked: true)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        tableView.isHidden = false
    }

    @IBAction func cancel(segue: UIStoryboardSegue) { }

    @IBAction func save(segue: UIStoryboardSegue) {
        guard let inputVC = segue.source as? InputViewController,
              let newFruit = inputVC.fruit else {
            return
        }
        fruitsData.append(newFruit)
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        fruits.count
        fruitsData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
//        cell.configure(fruit: fruits[indexPath.row])
        cell.configure(fruit: fruitsData[indexPath.row])
        return cell
    }
}
