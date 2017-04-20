//
//  TweetCellTests.swift
//  TableViewCellDemo
//
//  Created by swiftandpainless on 19.04.17.
//  Copyright © 2017 dasdom. All rights reserved.
//

import XCTest
@testable import TableViewCellDemo

class TweetCellTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_has_handleLabelAsSubview() {
        let sut = TweetCell(style: .default, reuseIdentifier: "Foo")
        
        let handleLabelIsSubview = sut.handleLabel.isDescendant(of: sut.contentView)
        XCTAssertTrue(handleLabelIsSubview)
    }
    
    func test_configure_setsHandle_1() {
        let sut = TweetCell(style: .default, reuseIdentifier: "Foo")
        let tweet = Tweet(handle: "foo")
        
        sut.configure(with: tweet)
        
        XCTAssertEqual(sut.handleLabel.text, "foo")
    }
    
    func test_configure_setsHandle_2() {
        let sut = TweetCell(style: .default, reuseIdentifier: "Foo")
        let tweet = Tweet(handle: "bar")
        
        sut.configure(with: tweet)
        
        XCTAssertEqual(sut.handleLabel.text, "bar")
    }
}
