//
//  ViewController.swift
//  headersAndFooters
//
//  Created by West Kraemer on 4/2/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let headerText = ["Header 1", "Header 2", "Header 3", "Header 4", "Header 5", "Header 6"]
    
    @IBOutlet weak var headerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.headerLabel.layer.cornerRadius = 20
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return aToZ.count
    }
    
}

extension ViewController: UITableViewDelegate {
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return aToZ
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return aToZ[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = UITextView()
//        header.backgroundColor = .gray
//        header.textColor = .white
//        header.text = "Header Section"
//        return header
//    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UITextView()
        footer.backgroundColor = .lightGray
        footer.textColor = .white
        footer.text = "Footer Section"
        return footer
    }
    
    
}
