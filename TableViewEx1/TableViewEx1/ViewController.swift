//
//  ViewController.swift
//  TableViewEx1
//
//  Created by runnysun on 2022/10/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        cell.textLabel?.text = "\(indexPath.row)번째 cell"
//        cell.imageView?.image = UIImage(systemName: "star")
//        cell.detailTextLabel?.text="detail text"
        var content = cell.defaultContentConfiguration()
        content.text = "\(indexPath.row)번째 cell"
        content.image = UIImage(systemName: "bus")
        content.secondaryText = "secondary"
        content.secondaryTextProperties.color = .red
        cell.contentConfiguration = content
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        label.text = "\(indexPath.section) 번째 section , \(indexPath.row) 번째 cell 입니다"
    }
}

