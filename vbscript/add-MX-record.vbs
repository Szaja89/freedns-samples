	'The FreeDns.io project
	'This sample adds a new MX record. You may have up to 4 MX records.

vUsername = "foo"
vPassword = "***"
vHost = "myhost"
vRecord = "MX"
vPreference = 10
vValue = "8.8.8.8"

	sRequest = "username=" & vUsername & "&password=" & vPassword &"&host=" & vHost & "&record=" & vRecord & "&preference=" & vPreference & "&value=" & vValue
	Set objxmlHTTP = CreateObject("Microsoft.XMLHTTP")
	objxmlHTTP.open "POST", "https://freedns.io/request",false
	objxmlHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
	objxmlHTTP.setRequestHeader "Content-Length", Len(sRequest)
	objxmlHTTP.send sRequest

'Uncomment following lines if you would like to receive a response message
'	If objxmlHTTP.Status >= 400 And objxmlHTTP.Status <= 599 Then
'	 	WScript.echo "Error Occurred : " & objxmlHTTP.Status & " - " & objxmlHTTP.statusText
'	Else
'	 	WScript.echo objxmlHTTP.ResponseText
'	End If