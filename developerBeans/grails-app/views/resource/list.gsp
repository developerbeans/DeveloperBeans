
<%@ page import="com.developerbeans.user.project.Resource" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resource.label', default: 'Resource')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-resource" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-resource" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'resource.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'resource.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'resource.status.label', default: 'Status')}" />
					
						<th><g:message code="resource.project.label" default="Project" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${resourceInstanceList}" status="i" var="resourceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${resourceInstance.id}">${fieldValue(bean: resourceInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: resourceInstance, field: "url")}</td>
					
						<td>${fieldValue(bean: resourceInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: resourceInstance, field: "project")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${resourceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
