<%@ page import="com.onb.registrationsystem.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${courseInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="course.students.label" default="Students" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.students?}" var="s">
    <li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="student" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'student.label', default: 'Student')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'subjects', 'error')} ">
	<label for="subjects">
		<g:message code="course.subjects.label" default="Subjects" />
		
	</label>
	<g:select name="subjects" from="${com.onb.registrationsystem.Subject.list()}" multiple="multiple" optionKey="id" size="5" value="${courseInstance?.subjects*.id}" class="many-to-many"/>
</div>

