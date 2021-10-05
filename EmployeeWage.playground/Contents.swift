import UIKit

/**
 Computing employee wages for multiple companies
 */
class EmployeeWage {

    let Is_Full_Time = 1
    let Is_Part_Time = 2

    var company: String
    var empRate: Int
    var workingDays: Int
    var maxHrs: Int

    init(company: String, empRate: Int, workingDays: Int, maxHrs: Int){

        self.company = company
        self.empRate = empRate
        self.maxHrs = maxHrs
        self.workingDays = workingDays

    }

    func computeWage(){

        var empHrs = 0
        var totalWorkHrs  = 0
        var totalWorkingDays  = 0
        var empTotalWage = 0
        var empDailyWage = 0

        while (totalWorkHrs <= maxHrs && totalWorkingDays < workingDays)
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

let company1 = EmployeeWage(company: "Apple", empRate: 10, workingDays: 20, maxHrs: 100)
let company2 = EmployeeWage(company: "Samsung", empRate: 20, workingDays: 15, maxHrs: 100)
company1.computeWage()
company2.computeWage()
