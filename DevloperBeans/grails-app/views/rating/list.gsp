
<%@ page import="com.developerbeans.user.project.Rating" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-rating" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-rating" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="status" title="${message(code: 'rating.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="value" title="${message(code: 'rating.value.label', default: 'Value')}" />
					
						<g:sortableColumn property="userId" title="${message(code: 'rating.userId.label', default: 'User Id')}" />
					
						<th><g:message code="rating.project.label" default="Project" /></th>
					
						<g:sortableColumn property="ratedOn" title="${message(code: 'rating.ratedOn.label', default: 'Rated On')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ratingInstanceList}" status="i" var="ratingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ratingInstance.id}">${fieldValue(bean: ratingInstance, field: "status")}</g:link></td>
					
						<td>${fieldValue(bean: ratingInstance, field: "value")}</td>
					
						<td>${fieldValue(bean: ratingInstance, field: "userId")}</td>
					
						<td>${fieldValue(bean: ratingInstance, field: "project")}</td>
					
						<td><g:formatDate date="${ratingInstance.ratedOn}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ratingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
