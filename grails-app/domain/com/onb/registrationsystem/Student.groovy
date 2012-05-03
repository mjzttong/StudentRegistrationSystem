package com.onb.registrationsystem

class Student extends User{
    String studentNumber
    String firstName
    String lastName
	int level
	Date registrationDate
	Enrollment enrollment
	static hasOne = [course:Course]
	
    static constraints = {
		studentNumber nullable:false, blank:false, unique:true, size: 1..10
		firstName nullable:false, blank:false
		lastName nullable:false, blank:false
		enrollment nullable:true
    }
	
	String toString(){
		return studentNumber+"-"+lastName+", "+firstName
	}


}
