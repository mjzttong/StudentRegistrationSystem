
<%@ page import="com.onb.registrationsystem.Subject" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subject.label', default: 'Subject')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-subject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-subject" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list subject">
			
				<g:if test="${subjectInstance?.subjectCode}">
				<li class="fieldcontain">
					<span id="subjectCode-label" class="property-label"><g:message code="subject.subjectCode.label" default="Subject Code" /></span>
					
						<span class="property-value" aria-labelledby="subjectCode-label"><g:fieldValue bean="${subjectInstance}" field="subjectCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subjectInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="subject.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${subjectInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subjectInstance?.fee}">
				<li class="fieldcontain">
					<span id="fee-label" class="property-label"><g:message code="subject.fee.label" default="Fee" /></span>
					
						<span class="property-value" aria-labelledby="fee-label"><g:fieldValue bean="${subjectInstance}" field="fee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subjectInstance?.classes}">
				<li class="fieldcontain">
					<span id="classes-label" class="property-label"><g:message code="subject.classes.label" default="Classes" /></span>
					
						<g:each in="${subjectInstance.classes}" var="c">
						<span class="property-value" aria-labelledby="classes-label"><g:link controller="section" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${subjectInstance?.courses}">
				<li class="fieldcontain">
					<span id="courses-label" class="property-label"><g:message code="subject.courses.label" default="Courses" /></span>
					
						<g:each in="${subjectInstance.courses}" var="c">
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${subjectInstance?.id}" />
					<g:link class="edit" action="edit" id="${subjectInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
