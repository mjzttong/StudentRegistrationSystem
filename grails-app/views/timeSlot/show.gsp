
<%@ page import="com.onb.registrationsystem.TimeSlot" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'timeSlot.label', default: 'TimeSlot')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-timeSlot" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-timeSlot" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list timeSlot">
			
				<g:if test="${timeSlotInstance?.days}">
				<li class="fieldcontain">
					<span id="days-label" class="property-label"><g:message code="timeSlot.days.label" default="Days" /></span>
					
						<span class="property-value" aria-labelledby="days-label"><g:fieldValue bean="${timeSlotInstance}" field="days"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSlotInstance?.start}">
				<li class="fieldcontain">
					<span id="start-label" class="property-label"><g:message code="timeSlot.start.label" default="Start" /></span>
					
						<span class="property-value" aria-labelledby="start-label"><g:fieldValue bean="${timeSlotInstance}" field="start"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSlotInstance?.end}">
				<li class="fieldcontain">
					<span id="end-label" class="property-label"><g:message code="timeSlot.end.label" default="End" /></span>
					
						<span class="property-value" aria-labelledby="end-label"><g:fieldValue bean="${timeSlotInstance}" field="end"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSlotInstance?.classes}">
				<li class="fieldcontain">
					<span id="classes-label" class="property-label"><g:message code="timeSlot.classes.label" default="Classes" /></span>
					
						<g:each in="${timeSlotInstance.classes}" var="c">
						<span class="property-value" aria-labelledby="classes-label"><g:link controller="section" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${timeSlotInstance?.id}" />
					<g:link class="edit" action="edit" id="${timeSlotInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
