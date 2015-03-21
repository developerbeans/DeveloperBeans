
<%@ page import="com.developerbeans.user.Follower" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'follower.label', default: 'Follower')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-follower" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-follower" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="userID" title="${message(code: 'follower.userID.label', default: 'User ID')}" />
					
						<g:sortableColumn property="followerID" title="${message(code: 'follower.followerID.label', default: 'Follower ID')}" />
					
						<g:sortableColumn property="followedOn" title="${message(code: 'follower.followedOn.label', default: 'Followed On')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${followerInstanceList}" status="i" var="followerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${followerInstance.id}">${fieldValue(bean: followerInstance, field: "userID")}</g:link></td>
					
						<td>${fieldValue(bean: followerInstance, field: "followerID")}</td>
					
						<td><g:formatDate date="${followerInstance.followedOn}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${followerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
