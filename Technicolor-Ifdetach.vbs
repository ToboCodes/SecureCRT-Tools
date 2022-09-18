#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	crt.Screen.Send "ppp ifdetach intf=Internet" & VbCr
	crt.Screen.WaitForString "=>"
	msgbox "Libere la sesión de la cuenta ADSL en AAA y luego pulse aceptar",32,"Cuenta desconectada"
	crt.Screen.Send VbCr	
	crt.Screen.WaitForString "=>"
	crt.Screen.Send "ppp ifattach intf=Internet" & VbCr
	crt.Screen.WaitForString "=>"
	msgbox "Espere unos segundos a que la cuenta reconecte."+chr(13)+"Luego valide si el equipo obtuvo una IP de internet",32,"Reestableciendo conexión"
	crt.Screen.Send VbCr	
	crt.Screen.WaitForString "=>"
	crt.Screen.Send "ip iplist" & VbCr
End Sub