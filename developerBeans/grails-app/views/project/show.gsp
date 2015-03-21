
<%@ page import="com.developerbeans.user.project.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.downloadUrl}">
				<li class="fieldcontain">
					<span id="downloadUrl-label" class="property-label"><g:message code="project.downloadUrl.label" default="Download Url" /></span>
					
						<span class="property-value" aria-labelledby="downloadUrl-label"><g:fieldValue bean="${projectInstance}" field="downloadUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="project.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${projectInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="project.tags.label" default="Tags" /></span>
					
						<span class="property-value" aria-labelledby="tags-label"><g:fieldValue bean="${projectInstance}" field="tags"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.shortDescription}">
				<li class="fieldcontain">
					<span id="shortDescription-label" class="property-label"><g:message code="project.shortDescription.label" default="Short Description" /></span>
					
						<span class="property-value" aria-labelledby="shortDescription-label"><g:fieldValue bean="${projectInstance}" field="shortDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.size}">
				<li class="fieldcontain">
					<span id="size-label" class="property-label"><g:message code="project.size.label" default="Size" /></span>
					
						<span class="property-value" aria-labelledby="size-label"><g:fieldValue bean="${projectInstance}" field="size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.longDescription}">
				<li class="fieldcontain">
					<span id="longDescription-label" class="property-label"><g:message code="project.longDescription.label" default="Long Description" /></span>
					
						<span class="property-value" aria-labelledby="longDescription-label"><g:fieldValue bean="${projectInstance}" field="longDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="project.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${projectInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.adminStatus}">
				<li class="fieldcontain">
					<span id="adminStatus-label" class="property-label"><g:message code="project.adminStatus.label" default="Admin Status" /></span>
					
						<span class="property-value" aria-labelledby="adminStatus-label"><g:formatBoolean boolean="${projectInstance?.adminStatus}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.createdOn}">
				<li class="fieldcontain">
					<span id="createdOn-label" class="property-label"><g:message code="project.createdOn.label" default="Created On" /></span>
					
						<span class="property-value" aria-labelledby="createdOn-label"><g:formatDate date="${projectInstance?.createdOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.downloads}">
				<li class="fieldcontain">
					<span id="downloads-label" class="property-label"><g:message code="project.downloads.label" default="Downloads" /></span>
					
						<span class="property-value" aria-labelledby="downloads-label"><g:fieldValue bean="${projectInstance}" field="downloads"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.resources}">
				<li class="fieldcontain">
					<span id="resources-label" class="property-label"><g:message code="project.resources.label" default="Resources" /></span>
					
						<g:each in="${projectInstance.resources}" var="r">
						<span class="property-value" aria-labelledby="resources-label"><g:link controller="resource" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="project.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${projectInstance?.user?.id}">${projectInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.views}">
				<li class="fieldcontain">
					<span id="views-label" class="property-label"><g:message code="project.views.label" default="Views" /></span>
					
						<span class="property-value" aria-labelledby="views-label"><g:fieldValue bean="${projectInstance}" field="views"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${projectInstance?.id}" />
					<g:link class="edit" action="edit" id="${projectInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
