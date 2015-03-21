<%@ page import="com.developerbeans.user.project.Rating" %>



<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="rating.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${ratingInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="rating.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" type="number" value="${ratingInstance.value}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="rating.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userId" required="" value="${ratingInstance?.userId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="rating.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.developerbeans.user.project.Project.list()}" optionKey="id" required="" value="${ratingInstance?.project?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'ratedOn', 'error')} required">
	<label for="ratedOn">
		<g:message code="rating.ratedOn.label" default="Rated On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ratedOn" precision="day"  value="${ratingInstance?.ratedOn}"  />
</div>

