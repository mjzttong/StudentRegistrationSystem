
<%@ page import="com.onb.registrationsystem.TimeSlot" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'timeSlot.label', default: 'TimeSlot')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-timeSlot" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-timeSlot" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="days" title="${message(code: 'timeSlot.days.label', default: 'Days')}" />
					
						<g:sortableColumn property="start" title="${message(code: 'timeSlot.start.label', default: 'Start')}" />
					
						<g:sortableColumn property="end" title="${message(code: 'timeSlot.end.label', default: 'End')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${timeSlotInstanceList}" status="i" var="timeSlotInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${timeSlotInstance.id}">${fieldValue(bean: timeSlotInstance, field: "days")}</g:link></td>
					
						<td>${fieldValue(bean: timeSlotInstance, field: "start")}</td>
					
						<td>${fieldValue(bean: timeSlotInstance, field: "end")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${timeSlotInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
