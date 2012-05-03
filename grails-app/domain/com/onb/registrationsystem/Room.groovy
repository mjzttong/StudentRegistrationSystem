package com.onb.registrationsystem

class Room {
	String roomNumber
	String building
	
	static hasMany = [classes:Class]
	
    static constraints = {
		roomNumber nullable:false, blank:false
		building nullable:false, blank:false
    }
	
	String toString(){
		return building+" "+roomNumber
	}
}
