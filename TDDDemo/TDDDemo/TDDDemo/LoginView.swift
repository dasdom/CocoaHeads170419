//
//  LoginView.swift
//  TDDDemo
//
//  Created by swiftandpainless on 19.04.17.
//  Copyright © 2017 dasdom. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    let usernameTextField: UITextField
    let passwordTextField: UITextField
    
    override init(frame: CGRect) {
        
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Please log in"
        
        usernameTextField = UITextField()
        usernameTextField.placeholder = "Username"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.font = UIFont.systemFont(ofSize: 14)
        
        passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.font = UIFont.systemFont(ofSize: 14)
        
        let button = UIButton(type: .system)
        button.setTitle("Send", for: .normal)

        let stackView = UIStackView(arrangedSubviews: [label, usernameTextField, passwordTextField, button])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        
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
