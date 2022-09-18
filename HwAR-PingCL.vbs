#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	IP = inputbox("Indique la puerta de enlace"&VbCr&"Agregue -q para resumir", "Ping nacional Huawei AR")
	If IP = "" Then
		Exit Sub
	end if
	crt.Screen.Send "ping -c 500 -s 1000 -m 20 -a "& IP &" 190.196.123.30" & VbCr
End Sub