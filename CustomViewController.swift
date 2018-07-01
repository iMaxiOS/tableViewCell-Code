//
//  CustomViewController.swift
//  TableViewCell = Code
//
//  Created by iMaxiOS on 7/1/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       method()
    }
    
    func method() {
        textView.isEditable = false
        textView.isSelectable = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
    }
    

}
