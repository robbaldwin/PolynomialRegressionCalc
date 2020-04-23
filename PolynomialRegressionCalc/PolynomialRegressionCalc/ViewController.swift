//
//  ViewController.swift
//  PolynomialRegressionCalc
//
//  Created by Rob Baldwin on 23/04/2020.
//  Copyright © 2020 Rob Baldwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Provide known X/Y values as Arrays of Doubles
    // A minimum of three values must be provided
    let xValues: [Double] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let yValues: [Double] = [1, 6, 17, 34, 57, 86, 121, 162, 209, 262, 321]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Instantiate Calculator and pass in known X/Y values
        let prCalc = PolynomialRegressionCalculator(xValues: xValues, yValues: yValues)
        
        // Set xValue that you wish to know the predicted Y value for
        let xValue = 11.0
        
        // Pass to the function and unwrap the result
        if let result = prCalc.predictYValue(at: xValue) {
            print("For X value \(xValue) the predicated Y value is: \(result)")
        } else {
            print("Unable to provide result.")
        }
    }
}

