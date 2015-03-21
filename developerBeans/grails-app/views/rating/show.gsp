
<%@ page import="com.developerbeans.user.project.Rating" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rating" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rating" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rating">
			
				<g:if test="${ratingInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="rating.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${ratingInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratingInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="rating.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${ratingInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratingInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="rating.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${ratingInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratingInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="rating.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${ratingInstance?.project?.id}">${ratingInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratingInstance?.ratedOn}">
				<li class="fieldcontain">
					<span id="ratedOn-label" class="property-label"><g:message code="rating.ratedOn.label" default="Rated On" /></span>
					
						<span class="property-value" aria-labelledby="ratedOn-label"><g:formatDate date="${ratingInstance?.ratedOn}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ratingInstance?.id}" />
					<g:link class="edit" action="edit" id="${ratingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
