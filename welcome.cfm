<cfset param_name = hash(#URL.userid#, 'SHA-384', 'UTF-8', 500)>
<cfset res = Compare(URL.token, param_name)>
<cfoutput>

<cfif isDefined("URL.token") && res eq 0>
	
	Welcome, #URL.userid#
	
<cfelse>
	<cflocation url=index.cfm?errormessage=passReq>

</cfif>

</cfoutput>

