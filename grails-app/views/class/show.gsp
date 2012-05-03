
<%@ page import="com.onb.registrationsystem.Class" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'class.label', default: 'Class')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-class" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-class" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list class">
			
				<g:if test="${classInstance?.room}">
				<li class="fieldcontain">
					<span id="room-label" class="property-label"><g:message code="class.room.label" default="Room" /></span>
					
						<span class="property-value" aria-labelledby="room-label"><g:link controller="room" action="show" id="${classInstance?.room?.id}">${classInstance?.room?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="class.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:link controller="subject" action="show" id="${classInstance?.subject?.id}">${classInstance?.subject?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.teacher}">
				<li class="fieldcontain">
					<span id="teacher-label" class="property-label"><g:message code="class.teacher.label" default="Teacher" /></span>
					
						<span class="property-value" aria-labelledby="teacher-label"><g:link controller="teacher" action="show" id="${classInstance?.teacher?.id}">${classInstance?.teacher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${classInstance?.timeslot}">
				<li class="fieldcontain">
					<span id="timeslot-label" class="property-label"><g:message code="class.timeslot.label" default="Timeslot" /></span>
					
						<span class="property-value" aria-labelledby="timeslot-label"><g:link controller="timeSlot" action="show" id="${classInstance?.timeslot?.id}">${classInstance?.timeslot?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${classInstance?.id}" />
					<g:link class="edit" action="edit" id="${classInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
