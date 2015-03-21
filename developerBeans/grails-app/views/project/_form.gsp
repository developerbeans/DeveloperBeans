<%@ page import="com.developerbeans.user.project.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'downloadUrl', 'error')} required">
	<label for="downloadUrl">
		<g:message code="project.downloadUrl.label" default="Download Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="downloadUrl" required="" value="${projectInstance?.downloadUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${projectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'tags', 'error')} required">
	<label for="tags">
		<g:message code="project.tags.label" default="Tags" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tags" required="" value="${projectInstance?.tags}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'shortDescription', 'error')} required">
	<label for="shortDescription">
		<g:message code="project.shortDescription.label" default="Short Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortDescription" required="" value="${projectInstance?.shortDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'size', 'error')} ">
	<label for="size">
		<g:message code="project.size.label" default="Size" />
		
	</label>
	<g:field name="size" type="number" value="${projectInstance.size}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'longDescription', 'error')} ">
	<label for="longDescription">
		<g:message code="project.longDescription.label" default="Long Description" />
		
	</label>
	<g:textField name="longDescription" value="${projectInstance?.longDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="project.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${projectInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'adminStatus', 'error')} ">
	<label for="adminStatus">
		<g:message code="project.adminStatus.label" default="Admin Status" />
		
	</label>
	<g:checkBox name="adminStatus" value="${projectInstance?.adminStatus}" />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'createdOn', 'error')} required">
	<label for="createdOn">
		<g:message code="project.createdOn.label" default="Created On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdOn" precision="day"  value="${projectInstance?.createdOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'downloads', 'error')} required">
	<label for="downloads">
		<g:message code="project.downloads.label" default="Downloads" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="downloads" type="number" value="${projectInstance.downloads}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'resources', 'error')} ">
	<label for="resources">
		<g:message code="project.resources.label" default="Resources" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.resources?}" var="r">
    <li><g:link controller="resource" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resource" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resource.label', default: 'Resource')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="project.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.developerbeans.user.User.list()}" optionKey="id" required="" value="${projectInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'views', 'error')} required">
	<label for="views">
		<g:message code="project.views.label" default="Views" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="views" type="number" value="${projectInstance.views}" required=""/>
</div>

