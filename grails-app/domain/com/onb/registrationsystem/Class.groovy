package com.onb.registrationsystem

class Class {
	final int MAX_STUDENTS = 30
	
    static hasOne = [subject:Subject, teacher:Teacher, timeslot:TimeSlot, room:Room]
	
	static constraints = {
    }
	
	String toString(){
		return subject.toString()+" "+teacher.toString()+" "+timeslot.toString()+" "+room.toString()
	}
}
