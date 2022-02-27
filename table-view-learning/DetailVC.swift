//
//  DetailVC.swift
//  table-view-learning
//
//  Created by Дарья Тимофеева on 26.02.2022.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var bookImage: UIImageView!

    @IBOutlet weak var bookTitleLabel: UILabel!
    
    var bookTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookImage.image = UIImage(named: bookTitle)
        bookTitleLabel.text = bookTitle
        bookTitleLabel.numberOfLines = 0
        
    }
    

}
