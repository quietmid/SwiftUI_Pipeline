//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Joseph Lu on 9/15/26.
//  Copyright © 2026 NSHotchner. All rights reserved.
//

import XCTest
@testable import Calculator

final class CalculatorBrainTests: XCTestCase {
    
    // MARK: - Basic binary operations
    
    func testAddition() {
        var brain = CalculatorBrain()
        brain.setOperand(2)
        brain.performOperation("+")
        brain.setOperand(3)
        brain.performOperation("=")
        XCTAssertEqual(brain.result, 5)
    }
    
    func testSubtraction() {
        var brain = CalculatorBrain()
        brain.setOperand(10)
        brain.performOperation("−")
        brain.setOperand(4)
        brain.performOperation("=")
        XCTAssertEqual(brain.result, 6)
    }
    
    func testMultiplication() {
        var brain = CalculatorBrain()
        brain.setOperand(6)
        brain.performOperation("×")
        brain.setOperand(7)
        brain.performOperation("=")
        XCTAssertEqual(brain.result, 42)
    }
    
    func testDivision() {
        var brain = CalculatorBrain()
        brain.setOperand(10)
        brain.performOperation("÷")
        brain.setOperand(2)
        brain.performOperation("=")
        XCTAssertEqual(brain.result, 5)
    }
}
