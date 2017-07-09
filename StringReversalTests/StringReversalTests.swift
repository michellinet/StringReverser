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

    func testTwo() {
        let reverser = Reverser(input: "a$b@c")
        let reversedString = reverser.reverse()

        XCTAssertEqual(reversedString, "c$b@a")
        
    }

    func testThree() {
        let reverser = Reverser(input: "a,b$c")
        let reversedString = reverser.reverse()

        XCTAssertEqual(reversedString, "c,b$a")
    }

    func testFour() {
        let reverser = Reverser(input: "a$b$c")
        let reversedString = reverser.reverse()

        XCTAssertEqual(reversedString, "c$b$a")
    }
}
