#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	crt.Screen.Send "firewall config state disabled" & VbCr
	crt.Screen.WaitForString "=>"
	crt.Screen.Send "ip iplist" & VbCr
	crt.Screen.WaitForString "=>"
	msgbox "Acceda a la IP de Internet mediante un navegador."+chr(13)+"Para finalizar presione Enter",32,"Acceso remoto habilitado"
	crt.Screen.Send VbCr	
	crt.Screen.Send "firewall config state enabled"
End Sub