//
//  ViewController.swift
//  cards
//
//  Created by Felipe Rocha Oliveira on 29/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardsTableView: UITableView!
    
    private var arrayCards: [CardsElement] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cardsTableView.register(UINib(nibName: "CardCell", bundle: nil), forCellReuseIdentifier: "CardCell")
        self.cardsTableView.delegate = self
        self.cardsTableView.dataSource = self
        
        self.arrayCards.append(contentsOf: [
            CardsElement(id: "1", name: "Felipe R Oliveira", date: "04/27", number: "5555 3333 .... ....", flag: "visa"),
            CardsElement(id: "2", name: "Felipe R Oliveira", date: "04/32", number: "7777 2222 .... ....", flag: "mastercard")
        ])
    }
}

// MARK: UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.arrayCards.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CardCell? = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as? CardCell
        
        cell?.setup(card: self.arrayCards[indexPath.section])
        
        return cell ?? UITableViewCell()
    }
}
