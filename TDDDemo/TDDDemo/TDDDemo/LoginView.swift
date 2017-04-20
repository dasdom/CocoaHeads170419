//
//  LoginView.swift
//  TDDDemo
//
//  Created by swiftandpainless on 19.04.17.
//  Copyright © 2017 dasdom. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
        
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Please log in"
        
        let stackView = UIStackView(arrangedSubviews: [label])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        
        super.init(frame: frame)
    
        backgroundColor = UIColor.white
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: layoutMargins.left),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -layoutMargins.right),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: layoutMargins.top)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
