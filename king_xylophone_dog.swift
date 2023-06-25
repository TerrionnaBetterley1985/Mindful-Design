import UIKit

class InteriorDesignFengShuiClasses {
    
    var studentName: String?
    var instructorName: String?
    var courseName: String?
    var hoursPerWeek: Int?
    var costPerClass: Double?
    
    init(studentName: String, instructorName: String, courseName: String, hoursPerWeek: Int, costPerClass: Double) {
        self.studentName = studentName
        self.instructorName = instructorName
        self.courseName = courseName
        self.hoursPerWeek = hoursPerWeek
        self.costPerClass = costPerClass
    }
    
    func calculateTotalCost() -> Double {
        guard let hoursPerWeek = self.hoursPerWeek, let costPerClass = self.costPerClass else {
            return 0.0
        }
        return Double(hoursPerWeek) * costPerClass
    }
    
    func printSummary() {
        print("Interior Design and Feng Shui Classes")
        print("\t Student Name: \(self.studentName ?? "N/A")")
        print("\t Instructor Name: \(self.instructorName ?? "N/A")")
        print("\t Course Name: \(self.courseName ?? "N/A")")
        print("\t Hours per Week: \(self.hoursPerWeek ?? 0)")
        print("\t Cost per Class: \(self.costPerClass ?? 0)")
        print("\t Total Cost: \(self.calculateTotalCost())")
    }
}


let student1 = InteriorDesignFengShuiClasses(studentName: "John Appleseed", instructorName: "Jane Doe", courseName: "Interior Decoration and Feng Shui 101", hoursPerWeek: 10, costPerClass: 10.00)

student1.printSummary()