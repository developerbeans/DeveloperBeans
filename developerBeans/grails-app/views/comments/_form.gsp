<%@ page import="com.developerbeans.post.Comments" %>



<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="comments.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${commentsInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'post', 'error')} required">
	<label for="post">
		<g:message code="comments.post.label" default="Post" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="post" name="post.id" from="${com.developerbeans.post.Post.list()}" optionKey="id" required="" value="${commentsInstance?.post?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="comments.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userId" required="" value="${commentsInstance?.userId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="comments.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${commentsInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'postedOn', 'error')} required">
	<label for="postedOn">
		<g:message code="comments.postedOn.label" default="Posted On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="postedOn" precision="day"  value="${commentsInstance?.postedOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'spammer', 'error')} required">
	<label for="spammer">
		<g:message code="comments.spammer.label" default="Spammer" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="spammer" type="number" value="${commentsInstance.spammer}" required=""/>
</div>

