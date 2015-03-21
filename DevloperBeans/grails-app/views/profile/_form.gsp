<%@ page import="com.developerbeans.user.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'profilePic', 'error')} ">
	<label for="profilePic">
		<g:message code="profile.profilePic.label" default="Profile Pic" />
		
	</label>
	<g:textField name="profilePic" value="${profileInstance?.profilePic}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'fbUrl', 'error')} ">
	<label for="fbUrl">
		<g:message code="profile.fbUrl.label" default="Fb Url" />
		
	</label>
	<g:field type="url" name="fbUrl" value="${profileInstance?.fbUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'twitterUrl', 'error')} ">
	<label for="twitterUrl">
		<g:message code="profile.twitterUrl.label" default="Twitter Url" />
		
	</label>
	<g:field type="url" name="twitterUrl" value="${profileInstance?.twitterUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'linkedInUrl', 'error')} ">
	<label for="linkedInUrl">
		<g:message code="profile.linkedInUrl.label" default="Linked In Url" />
		
	</label>
	<g:field type="url" name="linkedInUrl" value="${profileInstance?.linkedInUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'blogUrl', 'error')} ">
	<label for="blogUrl">
		<g:message code="profile.blogUrl.label" default="Blog Url" />
		
	</label>
	<g:field type="url" name="blogUrl" value="${profileInstance?.blogUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'otherUrl', 'error')} ">
	<label for="otherUrl">
		<g:message code="profile.otherUrl.label" default="Other Url" />
		
	</label>
	<g:textField name="otherUrl" value="${profileInstance?.otherUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'aboutMe', 'error')} ">
	<label for="aboutMe">
		<g:message code="profile.aboutMe.label" default="About Me" />
		
	</label>
	<g:textField name="aboutMe" value="${profileInstance?.aboutMe}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="profile.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${profileInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="profile.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${profileInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="profile.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${profileInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="profile.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${profileInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'orgName', 'error')} ">
	<label for="orgName">
		<g:message code="profile.orgName.label" default="Org Name" />
		
	</label>
	<g:textField name="orgName" value="${profileInstance?.orgName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'updatedOn', 'error')} required">
	<label for="updatedOn">
		<g:message code="profile.updatedOn.label" default="Updated On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedOn" precision="day"  value="${profileInstance?.updatedOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="profile.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.developerbeans.user.User.list()}" optionKey="id" required="" value="${profileInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'views', 'error')} required">
	<label for="views">
		<g:message code="profile.views.label" default="Views" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="views" type="number" value="${profileInstance.views}" required=""/>
</div>

