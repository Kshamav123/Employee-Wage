import UIKit

/**
 To check if the employee is present or absent
 by genearting random number
 */
print("Welcome to Employee Wage computeation")

let Is_Full_Time = 1

var empCheck = Int.random(in: 0..<5)
if empCheck == Is_Full_Time
{
    print("Employee is present")
}
else
{
    print("Employee is absent")
}
