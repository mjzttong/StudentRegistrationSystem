package com.onb.registrationsystem

class Teacher {
    String teacherNumber
    String firstName
    String lastName

	static hasMany = [classes:Class]
	
    static constraints = {
	teacherNumber nullable:false, blank:false, unique:true, size: 1..10
	firstName nullable:false, blank:false
	lastName nullable:false, blank:false
    }
	
	String toString(){
		return lastName+", "+ firstName;
	}
}
