<%@ page import="com.developerbeans.user.project.Resource" %>



<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="resource.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${resourceInstance?.type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="resource.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${resourceInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="resource.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${resourceInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="resource.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.developerbeans.user.project.Project.list()}" optionKey="id" required="" value="${resourceInstance?.project?.id}" class="many-to-one"/>
</div>

