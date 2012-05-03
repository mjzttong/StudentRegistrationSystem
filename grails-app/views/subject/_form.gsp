<%@ page import="com.onb.registrationsystem.Subject" %>



<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'subjectCode', 'error')} required">
	<label for="subjectCode">
		<g:message code="subject.subjectCode.label" default="Subject Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subjectCode" required="" value="${subjectInstance?.subjectCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subject.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subjectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'fee', 'error')} required">
	<label for="fee">
		<g:message code="subject.fee.label" default="Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="fee" required="" value="${fieldValue(bean: subjectInstance, field: 'fee')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message code="subject.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${subjectInstance?.classes?}" var="c">
    <li><g:link controller="section" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['subject.id': subjectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'class.label', default: 'Class')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="subject.courses.label" default="Courses" />
		
	</label>
	
</div>

