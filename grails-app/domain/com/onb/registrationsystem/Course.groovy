package com.onb.registrationsystem

class Course {
	String name
	String description
	
	static hasMany = [subjects:Subject, students:Student]
	
    static constraints = {
		name nullable:false, blank:false, unique:true
		description nullable:false, blank:false
    }
	
	String toString(){
		return name
	}
}
