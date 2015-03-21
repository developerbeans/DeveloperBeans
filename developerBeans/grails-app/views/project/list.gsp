
<%@ page import="com.developerbeans.user.project.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="downloadUrl" title="${message(code: 'project.downloadUrl.label', default: 'Download Url')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'project.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="tags" title="${message(code: 'project.tags.label', default: 'Tags')}" />
					
						<g:sortableColumn property="shortDescription" title="${message(code: 'project.shortDescription.label', default: 'Short Description')}" />
					
						<g:sortableColumn property="size" title="${message(code: 'project.size.label', default: 'Size')}" />
					
						<g:sortableColumn property="longDescription" title="${message(code: 'project.longDescription.label', default: 'Long Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "downloadUrl")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "tags")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "shortDescription")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "size")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "longDescription")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
