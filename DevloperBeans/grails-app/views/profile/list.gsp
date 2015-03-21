
<%@ page import="com.developerbeans.user.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="profilePic" title="${message(code: 'profile.profilePic.label', default: 'Profile Pic')}" />
					
						<g:sortableColumn property="fbUrl" title="${message(code: 'profile.fbUrl.label', default: 'Fb Url')}" />
					
						<g:sortableColumn property="twitterUrl" title="${message(code: 'profile.twitterUrl.label', default: 'Twitter Url')}" />
					
						<g:sortableColumn property="linkedInUrl" title="${message(code: 'profile.linkedInUrl.label', default: 'Linked In Url')}" />
					
						<g:sortableColumn property="blogUrl" title="${message(code: 'profile.blogUrl.label', default: 'Blog Url')}" />
					
						<g:sortableColumn property="otherUrl" title="${message(code: 'profile.otherUrl.label', default: 'Other Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profileInstanceList}" status="i" var="profileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profileInstance.id}">${fieldValue(bean: profileInstance, field: "profilePic")}</g:link></td>
					
						<td>${fieldValue(bean: profileInstance, field: "fbUrl")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "twitterUrl")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "linkedInUrl")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "blogUrl")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "otherUrl")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
