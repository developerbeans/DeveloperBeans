
<%@ page import="com.developerbeans.user.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="primaryEmail" title="${message(code: 'user.primaryEmail.label', default: 'Primary Email')}" />
					
						<g:sortableColumn property="userId" title="${message(code: 'user.userId.label', default: 'User Id')}" />
					
						<g:sortableColumn property="secondaryEmail" title="${message(code: 'user.secondaryEmail.label', default: 'Secondary Email')}" />
					
						<th><g:message code="user.profile.label" default="Profile" /></th>
					
						<g:sortableColumn property="source" title="${message(code: 'user.source.label', default: 'Source')}" />
					
						<g:sortableColumn property="sourceIp" title="${message(code: 'user.sourceIp.label', default: 'Source Ip')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "primaryEmail")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "userId")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "secondaryEmail")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "profile")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "source")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "sourceIp")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
