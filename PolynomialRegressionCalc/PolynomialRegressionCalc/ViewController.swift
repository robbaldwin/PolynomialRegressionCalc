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
    
    let xValues: [Double] = [0, 10, 20,30,40,50,60,70,80,90,100]
    let yValues: [Double] = [1,20,25,48,65,70,95,170,210,290,340]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Instantiate Calculator and pass in known X/Y values
        let prCalc = PolynomialRegressionCalculator(xValues: xValues, yValues: yValues)
        
        // Set xValue that you wish to know the predicted Y value for
        let xValue = 110.0
        
        // Pass to the function and unwrap the result
        if let result = prCalc.predictYValue(at: xValue) {
            print("For X value \(xValue) the predicated Y value is: \(result)")
        } else {
            print("Unable to provide result.")
        }
    }
}

