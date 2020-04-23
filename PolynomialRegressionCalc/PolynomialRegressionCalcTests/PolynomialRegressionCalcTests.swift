//
//  PolynomialRegressionCalcTests.swift
//  PolynomialRegressionCalcTests
//
//  Created by Rob Baldwin on 23/04/2020.
//  Copyright © 2020 Rob Baldwin. All rights reserved.
//

import XCTest
@testable import PolynomialRegressionCalc

class PolynomialRegressionCalcTests: XCTestCase {

    var prCalc: PolynomialRegressionCalculator!
    var xValues: [Double]!
    var yValues: [Double]!
    
    override func setUpWithError() throws {
        xValues = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        yValues = [1, 6, 17, 34, 57, 86, 121, 162, 209, 262, 321]
        
        prCalc = PolynomialRegressionCalculator(xValues: xValues, yValues: yValues)
    }

    override func tearDownWithError() throws {
        prCalc = nil
    }

    func test_PRCalc_providesExpectedOutput() throws {
        
        let expectedResults: [Double] = [1, 6, 17, 34, 57, 86, 121, 162, 209, 262, 321]
        
        for i in 0...10 {
            if let result = prCalc.predictYValue(at: Double(i)) {
                XCTAssertEqual(result, expectedResults[i])
            } else {
                XCTFail("Result returned nil")
            }
        }
    }
}
