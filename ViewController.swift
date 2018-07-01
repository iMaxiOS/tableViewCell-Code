//
//  ViewController.swift
//  TableViewCell = Code
//
//  Created by iMaxiOS on 7/1/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var details = DetailsTableViewCell()
    var mainArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainArray = ["Hi", "Hello", "Buy", "Privet", "Buy", "Buy", "DF"]
        
        self.tableView.register(DetailsTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CustomViewController {
           destination.imageView = details.mainImageView
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DetailsTableViewCell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIndex = indexPath.row
        performSegue(withIdentifier: "showDetails", sender: selectedIndex)
    }
}

