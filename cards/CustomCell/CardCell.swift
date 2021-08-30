//
//  CardCell.swift
//  cards
//
//  Created by Felipe Rocha Oliveira on 29/08/21.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(card: CardsElement?) {
        if let _card = card {
            self.nameLabel.text = _card.name
            self.numberLabel.text = _card.number
            self.dateLabel.text = _card.date
            self.flagImageView.image = UIImage(named: _card.flag)
            self.loadBackground(value: _card.flag)
        }
    }
    
    private func loadBackground(value: String) {
        if value == Flag.mastercard.rawValue {
            self.backgroundImageView.image = UIImage.init(named: "background-master")
        } else {
            self.backgroundImageView.image = UIImage.init(named: "background-visa")
        }
    }
}
