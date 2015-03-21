<%@ page import="com.developerbeans.user.project.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="comment.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${commentInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="comment.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.developerbeans.user.project.Project.list()}" optionKey="id" required="" value="${commentInstance?.project?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="comment.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userId" required="" value="${commentInstance?.userId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="comment.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${commentInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'postedOn', 'error')} required">
	<label for="postedOn">
		<g:message code="comment.postedOn.label" default="Posted On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="postedOn" precision="day"  value="${commentInstance?.postedOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'spammer', 'error')} required">
	<label for="spammer">
		<g:message code="comment.spammer.label" default="Spammer" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="spammer" type="number" value="${commentInstance.spammer}" required=""/>
</div>

