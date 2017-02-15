//
//  SwiftORTests.swift
//  SwiftORTests
//
//  Created by 刘健 on 2017/2/10.
//  Copyright © 2017年 com.grace.swiftOR. All rights reserved.
//

import XCTest
@testable import SwiftOR

class SwiftORTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOR() {
        let int1: Int? = nil
        XCTAssertEqual(int1.or(12), 12)
        
        let int2: Int? = 2
        XCTAssertEqual(int2.or(12), 2)
        
        let string1: String? = "123"
        XCTAssertEqual(string1.orDefault, "123")
        
        let string2: String? = nil
        XCTAssertEqual(string2.orDefault, "")
        
        let cgFloat1: CGFloat? = 120
        XCTAssertEqual(CGSize(width: cgFloat1.orDefault, height: cgFloat1.orDefault), CGSize(width: 120, height: 120))
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
