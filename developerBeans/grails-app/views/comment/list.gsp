
<%@ page import="com.developerbeans.user.project.Comment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-comment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'comment.description.label', default: 'Description')}" />
					
						<th><g:message code="comment.project.label" default="Project" /></th>
					
						<g:sortableColumn property="userId" title="${message(code: 'comment.userId.label', default: 'User Id')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'comment.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="postedOn" title="${message(code: 'comment.postedOn.label', default: 'Posted On')}" />
					
						<g:sortableColumn property="spammer" title="${message(code: 'comment.spammer.label', default: 'Spammer')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commentInstanceList}" status="i" var="commentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commentInstance.id}">${fieldValue(bean: commentInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: commentInstance, field: "project")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "userId")}</td>
					
						<td>${fieldValue(bean: commentInstance, field: "status")}</td>
					
						<td><g:formatDate date="${commentInstance.postedOn}" /></td>
					
						<td>${fieldValue(bean: commentInstance, field: "spammer")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
