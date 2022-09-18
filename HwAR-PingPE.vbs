#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	IP = inputbox("Indique la puerta de enlace"&VbCr&"Agregue -q para resumir", "Ping a PE Huawei AR")
	If IP = "" Then
		Exit Sub
	end if
	PE = inputbox("Ingrese la dirección IP del PE", "Ping a PE")
	If PE = "" Then
		Exit Sub
	end if
	crt.Screen.Send "ping -a "& IP &" -c 500 -s 1500 -m 1 "& PE & VbCr
End Sub