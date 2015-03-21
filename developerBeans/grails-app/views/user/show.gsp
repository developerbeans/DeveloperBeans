
<%@ page import="com.developerbeans.user.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.primaryEmail}">
				<li class="fieldcontain">
					<span id="primaryEmail-label" class="property-label"><g:message code="user.primaryEmail.label" default="Primary Email" /></span>
					
						<span class="property-value" aria-labelledby="primaryEmail-label"><g:fieldValue bean="${userInstance}" field="primaryEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="user.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${userInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.secondaryEmail}">
				<li class="fieldcontain">
					<span id="secondaryEmail-label" class="property-label"><g:message code="user.secondaryEmail.label" default="Secondary Email" /></span>
					
						<span class="property-value" aria-labelledby="secondaryEmail-label"><g:fieldValue bean="${userInstance}" field="secondaryEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.profile}">
				<li class="fieldcontain">
					<span id="profile-label" class="property-label"><g:message code="user.profile.label" default="Profile" /></span>
					
						<span class="property-value" aria-labelledby="profile-label"><g:link controller="profile" action="show" id="${userInstance?.profile?.id}">${userInstance?.profile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="user.source.label" default="Source" /></span>
					
						<span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${userInstance}" field="source"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.sourceIp}">
				<li class="fieldcontain">
					<span id="sourceIp-label" class="property-label"><g:message code="user.sourceIp.label" default="Source Ip" /></span>
					
						<span class="property-value" aria-labelledby="sourceIp-label"><g:fieldValue bean="${userInstance}" field="sourceIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="user.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${userInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.createdOn}">
				<li class="fieldcontain">
					<span id="createdOn-label" class="property-label"><g:message code="user.createdOn.label" default="Created On" /></span>
					
						<span class="property-value" aria-labelledby="createdOn-label"><g:formatDate date="${userInstance?.createdOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.displayName}">
				<li class="fieldcontain">
					<span id="displayName-label" class="property-label"><g:message code="user.displayName.label" default="Display Name" /></span>
					
						<span class="property-value" aria-labelledby="displayName-label"><g:fieldValue bean="${userInstance}" field="displayName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastSeen}">
				<li class="fieldcontain">
					<span id="lastSeen-label" class="property-label"><g:message code="user.lastSeen.label" default="Last Seen" /></span>
					
						<span class="property-value" aria-labelledby="lastSeen-label"><g:formatDate date="${userInstance?.lastSeen}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.posts}">
				<li class="fieldcontain">
					<span id="posts-label" class="property-label"><g:message code="user.posts.label" default="Posts" /></span>
					
						<g:each in="${userInstance.posts}" var="p">
						<span class="property-value" aria-labelledby="posts-label"><g:link controller="post" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.projects}">
				<li class="fieldcontain">
					<span id="projects-label" class="property-label"><g:message code="user.projects.label" default="Projects" /></span>
					
						<g:each in="${userInstance.projects}" var="p">
						<span class="property-value" aria-labelledby="projects-label"><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="user.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${userInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userInstance?.id}" />
					<g:link class="edit" action="edit" id="${userInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
