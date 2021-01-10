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

    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = ""
        checkView.image = nil
    }

    func configure(name: String, check: Bool) {
        nameLabel.text = name
        if check {
            checkView.image = UIImage(named: "check")
        }
    }
}
