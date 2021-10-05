import UIKit

/**
 Computing employee wages for multiple companies
 */
class EmployeeWage {

    let Is_Full_Time = 1
    let Is_Part_Time = 2

    init(){


    }

    func computeWage(empRate: Int, workingDays: Int, maxHrs: Int, company :String){

        var empHrs = 0
        var totalWorkHrs  = 0
        var totalWorkingDays  = 0
        var empTotalWage = 0
        var empDailyWage = 0

        while (totalWorkHrs <= 100 && totalWorkingDays < 20)
        {
            totalWorkingDays += 1
        let empCheck = Int.random(in: 0..<5)
        switch empCheck
        {
        case Is_Part_Time:
            empHrs = 4


        case Is_Full_Time:
            empHrs = 8

        default: empHrs = 0
        }
        totalWorkHrs += empHrs
        empDailyWage = empRate * empHrs
        empTotalWage += empDailyWage


        }
        print("Total wage",(empTotalWage),"of company",(company))

    }

}

let company = EmployeeWage();
company.computeWage(empRate: 20, workingDays: 10, maxHrs: 100, company: "Appple")
company.computeWage(empRate: 25, workingDays: 10, maxHrs: 200, company: "Reliance")
