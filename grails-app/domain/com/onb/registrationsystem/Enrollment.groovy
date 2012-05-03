package com.onb.registrationsystem

class Enrollment {
	Date enrollmentDate
	int schoolYear
	String semester
	private BigDecimal totalFee
	
	static belongsTo = [student:Student]
	static hasMany = [classes:Class]
	
    static constraints = {
		semester nullable:false, blank:false	
    }
}
