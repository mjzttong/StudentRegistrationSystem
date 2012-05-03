<%@ page import="com.onb.registrationsystem.TimeSlot" %>



<div class="fieldcontain ${hasErrors(bean: timeSlotInstance, field: 'days', 'error')} required">
	<label for="days">
		<g:message code="timeSlot.days.label" default="Days" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="days" required="" value="${timeSlotInstance?.days}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeSlotInstance, field: 'start', 'error')} required">
	<label for="start">
		<g:message code="timeSlot.start.label" default="Start" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="start" required="" value="${fieldValue(bean: timeSlotInstance, field: 'start')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeSlotInstance, field: 'end', 'error')} required">
	<label for="end">
		<g:message code="timeSlot.end.label" default="End" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="end" required="" value="${fieldValue(bean: timeSlotInstance, field: 'end')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeSlotInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message code="timeSlot.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${timeSlotInstance?.classes?}" var="c">
    <li><g:link controller="section" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['timeSlot.id': timeSlotInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>

</div>

