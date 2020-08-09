<cfoutput>
<cfset formTarget = "validationCode.cfm">

Please enter your UserID and password below:

<cfif isDefined("URL.errormessage")>
	<cfif URL.errormessage eq "passReq">
		<cfset errormsg = "UserID and password are required">
	<cfelseif URL.errormessage eq "wrongPass">
		<cfset errormsg = "Incorrect password entered">
	</cfif>
<p style="color:red">
	<strong>#errormsg#</strong>
</p>
</cfif>
<p>

<form action="#formTarget#">

                <label for="userid">UserID:</label><br>
                <input type="text" id="userid" name="userid"><br>

                <label for="password">Password:</label><br>
                <input type="password" id="password" name="password"><br><br>

                <input type="submit" value="Submit">

</form>
</p>



</cfoutput>