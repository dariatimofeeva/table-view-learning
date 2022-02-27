//
//  BooksTableVC.swift
//  table-view-learning
//
//  Created by Дарья Тимофеева on 25.02.2022.
//

import UIKit

class BooksTableVC: UITableViewController {
    
    let bookNameArray = ["Барбара Оакли - Думай как математик",
                         "Стивен Пинкер - Просвещение продолжается",
                         "Роберт Сапольски - Биология добра и зла"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bookNameArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookTitle", for: indexPath)
        cell.imageView?.image = UIImage(named: bookNameArray[indexPath.row])
        cell.textLabel?.text = bookNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! DetailVC
                detailVC.bookTitle = bookNameArray[indexPath.row]
            }
        }
    }

}
