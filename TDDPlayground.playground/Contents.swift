//: Playground - noun: a place where people can play

import UIKit
import XCTest

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
}

class TweetCellTests: XCTestCase {
  
    func test_has_handleLabelAsSubview() {
        let sut = TweetCell(style: .default, reuseIdentifier: "Foo")
        
        let handleLabelIsSubview = sut.handleLabel.isDescendant(of: sut.contentView)
        XCTAssertTrue(handleLabelIsSubview)
    }
}

TweetCellTests.defaultTestSuite().run()
