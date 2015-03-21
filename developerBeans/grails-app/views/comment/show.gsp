
<%@ page import="com.developerbeans.user.project.Comment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comment">
			
				<g:if test="${commentInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="comment.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${commentInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="comment.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${commentInstance?.project?.id}">${commentInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="comment.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${commentInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="comment.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${commentInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.postedOn}">
				<li class="fieldcontain">
					<span id="postedOn-label" class="property-label"><g:message code="comment.postedOn.label" default="Posted On" /></span>
					
						<span class="property-value" aria-labelledby="postedOn-label"><g:formatDate date="${commentInstance?.postedOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.spammer}">
				<li class="fieldcontain">
					<span id="spammer-label" class="property-label"><g:message code="comment.spammer.label" default="Spammer" /></span>
					
						<span class="property-value" aria-labelledby="spammer-label"><g:fieldValue bean="${commentInstance}" field="spammer"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commentInstance?.id}" />
					<g:link class="edit" action="edit" id="${commentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
