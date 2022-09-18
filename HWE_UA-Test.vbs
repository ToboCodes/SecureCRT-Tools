#$language = "VBScript"
#$interface = "1.0"
Dim IP, TID
Sub main
	IP  = inputbox("Ingrese la Ip del Nodo","Script Test de Linea HWE_UA")
	If IP = "" Then
		Exit Sub
	end if
	TID  = inputbox("Ingrese el terminal ID","Script Test de Linea HWE_UA")
	If TID = "" Then
		Exit Sub
	end if
	crt.Screen.Synchronous = True
	crt.Session.Disconnect
	crt.Session.Connect "/S Telsa"
	crt.Screen.WaitForString "telsa-2>"
	crt.Screen.Send "telnet "& IP & VbCr
	crt.Screen.WaitForString "name:"
	crt.Screen.Send "123" & VbCr
	crt.Screen.WaitForString "assword:"
	crt.Screen.Send "123" & VbCr
	CONN = crt.Screen.WaitForString ("Username or password invalid.", 1)
	If CONN = -1 Then
		crt.Screen.Send "123entel" & VbCr
		crt.Screen.WaitForString "assword:"
		crt.Screen.Send "123entel" & VbCr
		crt.Screen.WaitForString ">"
	end if
	crt.Screen.Send "enable" & VbCr
	crt.Screen.WaitForString "#"
	crt.Screen.Send "configure terminal" & VbCr
	CONFIG = crt.Screen.WaitForString ("config)#", 1)
	If CONFIG = 0 Then
		crt.Screen.Send "config" & VbCr
		crt.Screen.WaitForString "fig)#"
	end if
	crt.Screen.Send "test" & VbCr
	crt.Screen.WaitForString "test)#"
	crt.Screen.Send "pots loop-line-test mgid 1 terminalid " & TID & " busy 1" & VbCr
	MGERR = crt.Screen.WaitForString ("Failure:", 1)
	If MGERR = -1 Then
		crt.Screen.Send "pots loop-line-test mgid 0 terminalid " & TID & " busy 1" & VbCr
	end if
End sub