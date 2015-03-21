<%@ page import="com.developerbeans.user.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'primaryEmail', 'error')} required">
	<label for="primaryEmail">
		<g:message code="user.primaryEmail.label" default="Primary Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="primaryEmail" required="" value="${userInstance?.primaryEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="user.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userId" required="" value="${userInstance?.userId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'secondaryEmail', 'error')} ">
	<label for="secondaryEmail">
		<g:message code="user.secondaryEmail.label" default="Secondary Email" />
		
	</label>
	<g:field type="email" name="secondaryEmail" value="${userInstance?.secondaryEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'profile', 'error')} ">
	<label for="profile">
		<g:message code="user.profile.label" default="Profile" />
		
	</label>
	<g:select id="profile" name="profile.id" from="${com.developerbeans.user.Profile.list()}" optionKey="id" value="${userInstance?.profile?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'source', 'error')} ">
	<label for="source">
		<g:message code="user.source.label" default="Source" />
		
	</label>
	<g:textField name="source" value="${userInstance?.source}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sourceIp', 'error')} ">
	<label for="sourceIp">
		<g:message code="user.sourceIp.label" default="Source Ip" />
		
	</label>
	<g:textField name="sourceIp" value="${userInstance?.sourceIp}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="user.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${userInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'createdOn', 'error')} required">
	<label for="createdOn">
		<g:message code="user.createdOn.label" default="Created On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdOn" precision="day"  value="${userInstance?.createdOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'displayName', 'error')} ">
	<label for="displayName">
		<g:message code="user.displayName.label" default="Display Name" />
		
	</label>
	<g:textField name="displayName" value="${userInstance?.displayName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastSeen', 'error')} required">
	<label for="lastSeen">
		<g:message code="user.lastSeen.label" default="Last Seen" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastSeen" precision="day"  value="${userInstance?.lastSeen}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'posts', 'error')} ">
	<label for="posts">
		<g:message code="user.posts.label" default="Posts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.posts?}" var="p">
    <li><g:link controller="post" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="post" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'post.label', default: 'Post')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'projects', 'error')} ">
	<label for="projects">
		<g:message code="user.projects.label" default="Projects" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.projects?}" var="p">
    <li><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="project" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'project.label', default: 'Project')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="user.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${userInstance?.type}"/>
</div>

