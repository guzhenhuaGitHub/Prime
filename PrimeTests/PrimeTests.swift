//
//  PrimeTests.swift
//  PrimeTests
//
//  Created by 顾振华 on 2020/7/22.
//  Copyright © 2020 顾振华. All rights reserved.
//

import XCTest
@testable import Prime

class PrimeTests: XCTestCase {
    
    func testPrimeDivision() throws {
        let pd = PrimeDivision()
        XCTAssertEqual(try pd.factorize(6), [2: 1,3: 1])
        XCTAssertEqual(try pd.factorize(11), [11: 1])
    }

    func testPrime() throws {
        XCTAssertEqual(isPrime(1), false)
        let pd = PrimeDivision()
        try (2...20000).forEach { num in
            XCTAssertEqual(isPrime(num), Array(try pd.factorize(num).keys) == [num])
        }
    }
}
