package com.onb.registrationsystem

class Subject {
	String subjectCode
	String name
	BigDecimal fee	
	
	static hasMany = [courses:Course, classes:Class]
	static belongsTo = Course
	
    static constraints = {
		subjectCode nullable:false, blank:false, unique:true
		name nullable:false, blank:false
		fee nullable:false
    }
	
	String toString(){
		return subjectCode;
	}
}
