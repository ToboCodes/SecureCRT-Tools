#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	NFAZ = inputbox("Indique la interfaz a revisar"&VbCr&"Ejemplos de interfaz:"&VbCr&"LAN: Vlan1"&VbCr&"WAN: G0/0/8", "Show Interface")
	If NFAZ = "" Then
		Exit Sub
	end if
	crt.Screen.Send "display int "& NFAZ & VbCr
End Sub