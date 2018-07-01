//
//  DetailsTableViewCell.swift
//  TableViewCell = Code
//
//  Created by iMaxiOS on 7/1/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {
    
    var imageViewBackground : UIView = {
       var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainImageView: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "clapperboard")
        image.clipsToBounds = true
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 50
        return image
    }()
    
    var moreButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentMode = .scaleAspectFit
        button.imageView?.image = #imageLiteral(resourceName: "more-options")
        button.setImage(#imageLiteral(resourceName: "more-options"), for: .normal)
        return button
    }()
    
    var textField: UITextView = {
        var text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.boldSystemFont(ofSize: 12)
        text.textAlignment = .center
        text.textColor = UIColor.lightGray
        text.text = "Актеры: Люси Хейл, Тайлер Пози, Вайолетт Бин, Нолан Джерард Фанк, Лэндон Либуарон, София Тейлор Али ози, Вайолетт Бин, Нолан Джерард"
        text.isUserInteractionEnabled = false
        text.isEditable = false
        return text
    }()
    
    var mainLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "My fovorite music"
        return label
    }()
    
    var spaceAchore: CGFloat = 10
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.imageViewBackground.addSubview(mainImageView)
        self.addSubview(imageViewBackground)
        self.addSubview(moreButton)
        self.addSubview(textField)
        self.addSubview(mainLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        mainImageView.leftAnchor.constraint(equalTo: imageViewBackground.leftAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: imageViewBackground.rightAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: imageViewBackground.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: imageViewBackground.bottomAnchor).isActive = true
        
        imageViewBackground.leftAnchor.constraint(equalTo: self.leftAnchor, constant: spaceAchore).isActive = true
        imageViewBackground.topAnchor.constraint(equalTo: self.topAnchor, constant: spaceAchore).isActive = true
        imageViewBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -spaceAchore).isActive = true
        imageViewBackground.widthAnchor.constraint(equalTo: imageViewBackground.heightAnchor).isActive = true
        
        mainLabel.leftAnchor.constraint(equalTo: imageViewBackground.rightAnchor, constant: spaceAchore).isActive = true
        mainLabel.topAnchor.constraint(equalTo: imageViewBackground.topAnchor).isActive = true
        mainLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        mainLabel.rightAnchor.constraint(equalTo: moreButton.leftAnchor, constant: -spaceAchore).isActive = true
        
        textField.leftAnchor.constraint(equalTo: imageViewBackground.rightAnchor, constant: spaceAchore).isActive = true
        textField.bottomAnchor.constraint(equalTo: imageViewBackground.bottomAnchor).isActive = true
        textField.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 5).isActive = true
        textField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -spaceAchore).isActive = true
        
        moreButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -spaceAchore).isActive = true
        moreButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        moreButton.bottomAnchor.constraint(equalTo: self.textField.topAnchor).isActive = true
        moreButton.widthAnchor.constraint(equalToConstant: 34).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
















