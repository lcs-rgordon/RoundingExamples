import Cocoa

Double(10.05281).rounded()
Double(10.578).rounded()

extension Double {
    
    // UInt is an unsigned integer, which means a negative precision value
    // cannot be provided (that would not be logical, so it should not be allowed)
    func roundedTo(precision: UInt) -> Double {

        // Establish the multiplier (10, 100, 1000, etc based on precision value provided)
        let multiplier = pow(10, Double(precision))
        
        // Move decimal place to the right (by multiplying).
        // Round to nearest whole number.
        // Then move decimal place back to the left.
        let roundedValue = (self * multiplier).rounded() / multiplier
        
        // Return the rounded value
        return roundedValue
    }
}

// In this example, the Double value are multiplied by 10 (moving the decimal one place to the right).
// The values are then rounded to the nearest whple number.
// Finally the values are divided by 10, to move the decimal place back one place to the left.
Double(10.05281).roundedTo(precision: 1)
Double(10.578).roundedTo(precision: 1)

// In this example, the Double value are multiplied by 100 (moving the decimal two places to the right).
// The values are then rounded to the nearest whple number.
// Finally the values are divided by 100, to move the decimal place back two places to the left.
Double(10.05281).roundedTo(precision: 2)
Double(10.578).roundedTo(precision: 2)

Double(10.05281).roundedTo(precision: 4)
Double(10.578).roundedTo(precision: 4)

