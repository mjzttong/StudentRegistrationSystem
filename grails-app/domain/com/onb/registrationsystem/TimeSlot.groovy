package com.onb.registrationsystem

class TimeSlot {
	String days
	int start
	int end
		
	static hasMany = [classes:Section]
	
    static constraints = {
		days nullable:false, blank:false
    }
	
	String toString(){
		return days+" "+start+"-"+end;
	}
}
