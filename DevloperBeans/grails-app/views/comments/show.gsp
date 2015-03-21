
<%@ page import="com.developerbeans.post.Comments" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comments.label', default: 'Comments')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comments" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comments" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comments">
			
				<g:if test="${commentsInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="comments.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${commentsInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentsInstance?.post}">
				<li class="fieldcontain">
					<span id="post-label" class="property-label"><g:message code="comments.post.label" default="Post" /></span>
					
						<span class="property-value" aria-labelledby="post-label"><g:link controller="post" action="show" id="${commentsInstance?.post?.id}">${commentsInstance?.post?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentsInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="comments.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${commentsInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentsInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="comments.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${commentsInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentsInstance?.postedOn}">
				<li class="fieldcontain">
					<span id="postedOn-label" class="property-label"><g:message code="comments.postedOn.label" default="Posted On" /></span>
					
						<span class="property-value" aria-labelledby="postedOn-label"><g:formatDate date="${commentsInstance?.postedOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentsInstance?.spammer}">
				<li class="fieldcontain">
					<span id="spammer-label" class="property-label"><g:message code="comments.spammer.label" default="Spammer" /></span>
					
						<span class="property-value" aria-labelledby="spammer-label"><g:fieldValue bean="${commentsInstance}" field="spammer"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commentsInstance?.id}" />
					<g:link class="edit" action="edit" id="${commentsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
