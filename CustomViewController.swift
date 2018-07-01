//
//  CustomViewController.swift
//  TableViewCell = Code
//
//  Created by iMaxiOS on 7/1/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    var details = DetailsTableViewCell()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = details.mainImageView.image
        method()
    }
    
    func method() {
        textView.isEditable = false
        textView.isSelectable = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
    }
    
    
}
