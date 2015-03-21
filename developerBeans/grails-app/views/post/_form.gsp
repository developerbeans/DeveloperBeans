<%@ page import="com.developerbeans.post.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${postInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="post.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="category" required="" value="${postInstance?.category}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="post.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${postInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="post.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${postInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'adminStatus', 'error')} ">
	<label for="adminStatus">
		<g:message code="post.adminStatus.label" default="Admin Status" />
		
	</label>
	<g:checkBox name="adminStatus" value="${postInstance?.adminStatus}" />
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'createdOn', 'error')} required">
	<label for="createdOn">
		<g:message code="post.createdOn.label" default="Created On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdOn" precision="day"  value="${postInstance?.createdOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'postComments', 'error')} ">
	<label for="postComments">
		<g:message code="post.postComments.label" default="Post Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${postInstance?.postComments?}" var="p">
    <li><g:link controller="comments" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comments" action="create" params="['post.id': postInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comments.label', default: 'Comments')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="post.tags.label" default="Tags" />
		
	</label>
	<g:textField name="tags" value="${postInstance?.tags}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="post.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.developerbeans.user.User.list()}" optionKey="id" required="" value="${postInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'views', 'error')} required">
	<label for="views">
		<g:message code="post.views.label" default="Views" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="views" type="number" value="${postInstance.views}" required=""/>
</div>

