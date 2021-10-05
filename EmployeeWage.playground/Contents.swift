import UIKit

/**
 Computing employee wages for multiple companies by storing the objects in the array
 */
class EmployeeWage {

    let Is_Full_Time = 1
    let Is_Part_Time = 2
    var CompanyArray: [Company] = []
    var companyNo :Int = 0
    

    func addCompany(company: String, empRate: Int, workingDays: Int, maxHrs: Int){
       
       
        CompanyArray.append(Company(company: company, empRate: empRate, workingDays: workingDays, maxHrs: maxHrs))
       
    }
    func computeWage(){

        var totalWorkHrs  = 0
        var empTotalWage = 0
        var totalWorkingDays  = 0
        
        for index in 0..<CompanyArray.count{
            var empHrs = 0
    
        while (totalWorkHrs <= CompanyArray[index].maxHrs && totalWorkingDays < CompanyArray[index].workingDays)
        {
            totalWorkingDays += 1
           // print(totalWorkingDays)
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
            //print(CompanyArray)
        empTotalWage = totalWorkHrs * CompanyArray[index].empRate
        }
          
            print(CompanyArray[index].company, empTotalWage)
            //print(empTotalWage)
        }
       

    }
    
 
}


class Company{

    var company: String
    var empRate: Int
    var workingDays: Int
    var maxHrs: Int
 
    
    init (company: String, empRate: Int, workingDays: Int, maxHrs: Int){
        self.workingDays = workingDays
        self.maxHrs = maxHrs
        self.empRate = empRate
        self.company = company
      
    }

}

let company1 = EmployeeWage()

company1.addCompany(company: "Apple", empRate: 20, workingDays: 100, maxHrs: 25)
company1.addCompany(company: "Samsung", empRate: 26, workingDays: 105, maxHrs: 28)
company1.computeWage()

