<cfoutput>
<cfif !structKeyExists(URL, 'userid') or len(trim(URL.userid)) eq 0>
	<cflocation url=index.cfm?errormessage=passReq>
<cfelseif !structKeyExists(URL, 'password') or (URL.password) neq "welcome">
	<cflocation url=index.cfm?errormessage=wrongPass>	
<cfelse>
	<cfset form_token = "#hash(#URL.userid#, 'SHA-384', 'UTF-8', 500)#">
	<cflocation url="welcome.cfm?userid=#URL.userid#&token=#form_token#">
	
</cfif>
</cfoutput>