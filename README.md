# Polynomial Regression Calculator (written in Swift)
A tool written in Swift to find an approximating polynomial of a known degree for a given data.

This is useful for non-linear data sets, which tend to follow a curve.  The charts below show why Polynomial regression is better suited to non-linear data sets.

This tool was created with reference to the Polynomial Regression page at RosettaCode.org and converted to Swift
https://rosettacode.org/wiki/Polynomial_regression

# Usage

You just need the **PolynomicalRegressionCalculator.swift** class, although a simple Xcode project has been provided as a demonstration.

X and Y values must be provided in Arrays of Doubles, with corresponding values at the same index.

At least 3 values must be provided in order to make calcuations.

```
let xValues: [Double] = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
let yValues: [Double] = [1, 20, 25, 48, 65, 70, 95, 170, 210, 290, 340]
let prCalc = PolynomialRegressionCalculator(xValues: xValues, yValues: yValues)

let queryXValue = 110.0

if let result = prCalc.predictYValue(at: queryXValue) {
    print("For X value \(queryXValue) the predicated Y value is: \(result)")
} else {
    print("Unable to provide result.")
}

// result = 417.61212121212174
```

![RawData](https://user-images.githubusercontent.com/18574681/80108473-3cbde580-8574-11ea-87bf-22c4d64b8c76.png)

![PolynomialChart](https://user-images.githubusercontent.com/18574681/80108836-a938e480-8574-11ea-8b33-edd63a8331e4.png)

![LinearChart](https://user-images.githubusercontent.com/18574681/80108782-99b99b80-8574-11ea-8ec5-91d9c36211aa.png)
