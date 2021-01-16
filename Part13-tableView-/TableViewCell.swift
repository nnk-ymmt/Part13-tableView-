//
//  TableViewCell.swift
//  Part13-tableView-
//
//  Created by 山本ののか on 2021/01/09.
//

import UIKit

final class TableViewCell: UITableViewCell {

    @IBOutlet private weak var checkView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    static let reuseIdentifier = "TableViewCell"
    static func loadNib() -> UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }

//    func configure(fruit: Fruit) {
//        nameLabel.text = fruit.name
//        checkView.image = fruit.isChecked ? UIImage(named: "check") : nil
//    }

    func configure(fruit: String, index: Int) {
        nameLabel.text = fruit
        checkView.image = index % 2 == 0 ? UIImage(named: "check") : nil
    }
}



// 改善点

// prepareForReuseもできるが、パフォーマンスの観点からcellForRowAtの中で初期化を行う事が推奨されている
// func configure(name: String, check: Bool) {
//     nameLabel.text = name
//     checkView.image = check ? UIImage(named: "check") : nil
// }
