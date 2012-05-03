<%@ page import="com.onb.registrationsystem.Class" %>



<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'room', 'error')} required">
	<label for="room">
		<g:message code="class.room.label" default="Room" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="room" name="room.id" from="${com.onb.registrationsystem.Room.list()}" optionKey="id" required="" value="${classInstance?.room?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="class.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subject" name="subject.id" from="${com.onb.registrationsystem.Subject.list()}" optionKey="id" required="" value="${classInstance?.subject?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="class.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${com.onb.registrationsystem.Teacher.list()}" optionKey="id" required="" value="${classInstance?.teacher?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'timeslot', 'error')} required">
	<label for="timeslot">
		<g:message code="class.timeslot.label" default="Timeslot" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="timeslot" name="timeslot.id" from="${com.onb.registrationsystem.TimeSlot.list()}" optionKey="id" required="" value="${classInstance?.timeslot?.id}" class="many-to-one"/>
</div>

