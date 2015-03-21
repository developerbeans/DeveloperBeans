
<%@ page import="com.developerbeans.post.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-post" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list post">
			
				<g:if test="${postInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="post.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${postInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="post.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${postInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="post.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${postInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="post.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${postInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.adminStatus}">
				<li class="fieldcontain">
					<span id="adminStatus-label" class="property-label"><g:message code="post.adminStatus.label" default="Admin Status" /></span>
					
						<span class="property-value" aria-labelledby="adminStatus-label"><g:formatBoolean boolean="${postInstance?.adminStatus}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.createdOn}">
				<li class="fieldcontain">
					<span id="createdOn-label" class="property-label"><g:message code="post.createdOn.label" default="Created On" /></span>
					
						<span class="property-value" aria-labelledby="createdOn-label"><g:formatDate date="${postInstance?.createdOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.postComments}">
				<li class="fieldcontain">
					<span id="postComments-label" class="property-label"><g:message code="post.postComments.label" default="Post Comments" /></span>
					
						<g:each in="${postInstance.postComments}" var="p">
						<span class="property-value" aria-labelledby="postComments-label"><g:link controller="comments" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="post.tags.label" default="Tags" /></span>
					
						<span class="property-value" aria-labelledby="tags-label"><g:fieldValue bean="${postInstance}" field="tags"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="post.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${postInstance?.user?.id}">${postInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.views}">
				<li class="fieldcontain">
					<span id="views-label" class="property-label"><g:message code="post.views.label" default="Views" /></span>
					
						<span class="property-value" aria-labelledby="views-label"><g:fieldValue bean="${postInstance}" field="views"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${postInstance?.id}" />
					<g:link class="edit" action="edit" id="${postInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
