<%@ page import="com.developerbeans.user.project.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tag.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tagInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="tag.category.label" default="Category" />
		
	</label>
	<g:textField name="category" value="${tagInstance?.category}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'tagVersion', 'error')} ">
	<label for="tagVersion">
		<g:message code="tag.tagVersion.label" default="Tag Version" />
		
	</label>
	<g:textField name="tagVersion" value="${tagInstance?.tagVersion}"/>
</div>

