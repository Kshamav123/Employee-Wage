import UIKit

/**
 To check if the employement is full time or part time 
 by genearting random number and also calculating daily wage
 of the employee
 */
print("Welcome to Employee Wage computeation")

let Is_Full_Time = 1
let Is_Part_Time = 2
let Wage_Per_Hr = 20

var empHrs = 0
var empCheck = Int.random(in: 0..<5)
if empCheck == Is_Full_Time
{
    print("Full time employement")
    empHrs=8
    
}
else if empCheck == Is_Part_Time
{
    print("Part time emplyement")
    empHrs=4
}
else
{
    empHrs = 0
}
var empDailyWage = Wage_Per_Hr * empHrs
print("Employee daily wage: ")
print(empDailyWage)
