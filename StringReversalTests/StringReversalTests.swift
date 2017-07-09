//
//  StringReversalTests.swift
//  StringReversalTests
//
//  Created by Michelline Tran on 7/7/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

import XCTest
@testable import StringReversal

class StringReversalTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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

    func testNone() {
        let reverser = Reverser(input: "ab")
        let reversedString = reverser.reverse()

        XCTAssertEqual(reversedString, "ba")

    }

    func testOne() {
        let reverser = Reverser(input: "a$b")
        let reversedString = reverser.reverse()

        XCTAssertEqual(reversedString, "b$a")

    }

/*    func testTwo() {
        let reverser = Reverser(input: "a$b@c")
        let reversedString = reverser.reverse()

        XCTAssertEqual(reversedString, "c$b@a")
        
    }
*/

/*    func testOne() {
        let reverser = Reverser(string: "a,b$c")
        let reversedString = reverser.reverse()

        XCTAssertEqual(reversedString, "c,b$a")
    }
*/
}
