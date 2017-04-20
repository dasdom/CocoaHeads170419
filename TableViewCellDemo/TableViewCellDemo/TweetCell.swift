//
//  TweetCell.swift
//  TableViewCellDemo
//
//  Created by swiftandpainless on 19.04.17.
//  Copyright © 2017 dasdom. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    let handleLabel: UILabel
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        handleLabel = UILabel()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(handleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    func configure(with tweet: Tweet) {
        handleLabel.text = tweet.handle
    }
}
