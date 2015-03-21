
<%@ page import="com.developerbeans.user.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profile">
			
				<g:if test="${profileInstance?.profilePic}">
				<li class="fieldcontain">
					<span id="profilePic-label" class="property-label"><g:message code="profile.profilePic.label" default="Profile Pic" /></span>
					
						<span class="property-value" aria-labelledby="profilePic-label"><g:fieldValue bean="${profileInstance}" field="profilePic"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.fbUrl}">
				<li class="fieldcontain">
					<span id="fbUrl-label" class="property-label"><g:message code="profile.fbUrl.label" default="Fb Url" /></span>
					
						<span class="property-value" aria-labelledby="fbUrl-label"><g:fieldValue bean="${profileInstance}" field="fbUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.twitterUrl}">
				<li class="fieldcontain">
					<span id="twitterUrl-label" class="property-label"><g:message code="profile.twitterUrl.label" default="Twitter Url" /></span>
					
						<span class="property-value" aria-labelledby="twitterUrl-label"><g:fieldValue bean="${profileInstance}" field="twitterUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.linkedInUrl}">
				<li class="fieldcontain">
					<span id="linkedInUrl-label" class="property-label"><g:message code="profile.linkedInUrl.label" default="Linked In Url" /></span>
					
						<span class="property-value" aria-labelledby="linkedInUrl-label"><g:fieldValue bean="${profileInstance}" field="linkedInUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.blogUrl}">
				<li class="fieldcontain">
					<span id="blogUrl-label" class="property-label"><g:message code="profile.blogUrl.label" default="Blog Url" /></span>
					
						<span class="property-value" aria-labelledby="blogUrl-label"><g:fieldValue bean="${profileInstance}" field="blogUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.otherUrl}">
				<li class="fieldcontain">
					<span id="otherUrl-label" class="property-label"><g:message code="profile.otherUrl.label" default="Other Url" /></span>
					
						<span class="property-value" aria-labelledby="otherUrl-label"><g:fieldValue bean="${profileInstance}" field="otherUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.aboutMe}">
				<li class="fieldcontain">
					<span id="aboutMe-label" class="property-label"><g:message code="profile.aboutMe.label" default="About Me" /></span>
					
						<span class="property-value" aria-labelledby="aboutMe-label"><g:fieldValue bean="${profileInstance}" field="aboutMe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="profile.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${profileInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="profile.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${profileInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="profile.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${profileInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="profile.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${profileInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.orgName}">
				<li class="fieldcontain">
					<span id="orgName-label" class="property-label"><g:message code="profile.orgName.label" default="Org Name" /></span>
					
						<span class="property-value" aria-labelledby="orgName-label"><g:fieldValue bean="${profileInstance}" field="orgName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.updatedOn}">
				<li class="fieldcontain">
					<span id="updatedOn-label" class="property-label"><g:message code="profile.updatedOn.label" default="Updated On" /></span>
					
						<span class="property-value" aria-labelledby="updatedOn-label"><g:formatDate date="${profileInstance?.updatedOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="profile.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${profileInstance?.user?.id}">${profileInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.views}">
				<li class="fieldcontain">
					<span id="views-label" class="property-label"><g:message code="profile.views.label" default="Views" /></span>
					
						<span class="property-value" aria-labelledby="views-label"><g:fieldValue bean="${profileInstance}" field="views"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${profileInstance?.id}" />
					<g:link class="edit" action="edit" id="${profileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
