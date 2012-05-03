package com.onb.registrationsystem

class Student{
    String studentNumber
    String firstName
    String lastName
	int level
	Date registrationDate
	static hasMany = [enrollments:Enrollment]
	
    static constraints = {
	studentNumber nullable:false, blank:false, unique:true, size: 1..10
	firstName nullable:false, blank:false
	lastName nullable:false, blank:false
    }
	
}
