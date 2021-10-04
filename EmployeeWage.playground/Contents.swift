import UIKit

/**
 To check if the employement is full time or part time using case statement
 by genearting random number and also calculating wages for a month.
 */

    
print("Welcome to Employee Wage computeation")

let Is_Full_Time = 1
let Is_Part_Time = 2
let Wage_Per_Hr = 20
let Working_Days = 20

var empHrs = 0
var empDailyWage :Int = 0
var empTotalWage :Int = 0

for _ in 0..<Working_Days {
    
let empCheck = Int.random(in: 0..<5)
    
switch empCheck
{
case Is_Part_Time:
    print("Part time employement")
    empHrs = 4
    

case Is_Full_Time:
    print("Full time employement")
    empHrs = 8
   
default: empHrs = 0
}
    empDailyWage = Wage_Per_Hr * empHrs
    empTotalWage += empDailyWage
 
    print("Daily wage" ,(empDailyWage))

}
print("Total wage",(empTotalWage))

