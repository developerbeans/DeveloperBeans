<%@ page import="com.developerbeans.user.Follower" %>



<div class="fieldcontain ${hasErrors(bean: followerInstance, field: 'userID', 'error')} required">
	<label for="userID">
		<g:message code="follower.userID.label" default="User ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userID" required="" value="${followerInstance?.userID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: followerInstance, field: 'followerID', 'error')} required">
	<label for="followerID">
		<g:message code="follower.followerID.label" default="Follower ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="followerID" required="" value="${followerInstance?.followerID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: followerInstance, field: 'followedOn', 'error')} required">
	<label for="followedOn">
		<g:message code="follower.followedOn.label" default="Followed On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="followedOn" precision="day"  value="${followerInstance?.followedOn}"  />
</div>

