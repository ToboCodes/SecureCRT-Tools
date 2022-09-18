#$language = "VBScript"
#$interface = "1.0"
Dim IP, PASS
Sub main
	IP  = inputbox("Ingrese la Ip Supervision","Script ingreso Trunk/MPLS")
	If IP = "" Then
		Exit Sub
	end if
	crt.Screen.Synchronous = True
	crt.Session.Disconnect
	crt.Session.Connect "/S Tierra"
	'crt.Screen.WaitForString "login:"
	'crt.Screen.Send "searos"  & VbCr
	'crt.Screen.WaitForString "Password:"
	'crt.Screen.Send "Mat2017"  & VbCr
	crt.Screen.WaitForString "-sh-4.1$"
	crt.Screen.Send "telnet "& IP & VbCr
	crt.Screen.WaitForString "sername:"
	crt.Screen.Send "epc"  & VbCr
	crt.Screen.WaitForString "assword:"
	crt.Screen.Send "*1epc"  & VbCr
	CONNECT = crt.Screen.WaitForString ("#", 1)
	If CONNECT = 0 Then
		crt.Screen.WaitForString "sername:"
		crt.Screen.Send "npinilla"  & VbCr
		crt.Screen.WaitForString "assword:"
		crt.Screen.Send "nelson"  & VbCr
		LOGGED = crt.Screen.WaitForString ("#", 1)
		If LOGGED = 0 Then
			crt.Screen.WaitForString "sername:"
			crt.Screen.Send "mat1"  & VbCr
			crt.Screen.WaitForString "assword:"
			crt.Screen.Send ".1mat11"  & VbCr
			crt.Screen.WaitForString "#"
			crt.Screen.Send "enable"  & VbCr
			SIGLA = LCase(inputbox("Pegue la sigla del cliente desde AR"))
			crt.Screen.Send "*1"& SIGLA & VbCr
		end if
	end if
End sub