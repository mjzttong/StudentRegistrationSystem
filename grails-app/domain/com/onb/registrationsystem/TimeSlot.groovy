package com.onb.registrationsystem

class TimeSlot {
	String days
	int start
	int end
		
	static hasMany = [classes:Section]
	
    static constraints = {
		days nullable:false, blank:false
		start()
		end()
    }
	
	String toString(){
		return days+" "+start+"-"+end;
	}
}
