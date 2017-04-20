//
//  LoginViewControllerTests.swift
//  TDDDemo
//
//  Created by swiftandpainless on 19.04.17.
//  Copyright © 2017 dasdom. All rights reserved.
//

import FBSnapshotTestCase
@testable import TDDDemo

class LoginViewControllerTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()

//        recordMode = true
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_loginView_snapshot() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let sut = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        let sut = LoginViewController()
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = sut
        window.makeKeyAndVisible()
        _ = sut.view
        
        FBSnapshotVerifyView(sut.view)
    }
    
}
