#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Dim IP
Dim vWaitFors
vWaitFors = Array("sername: ", "refused", "assword: ", "authentication")
Sub main
	IPWAN  = inputbox("Ingrese la Ip WAN", "Script acceso WAN")
	If IPWAN = "" Then
		Exit Sub
	end if
	Call ingresoSW
	crt.Screen.WaitForString "SWL3-INT-MED#"
	crt.Screen.Send "ping "& IPWAN & VbCr
	PZZ = crt.Screen.WaitForString ("(5/5)", 10)
	If PZZ = 0 Then
		Exit Sub
	end if
	crt.Screen.Send "telnet "& IPWAN & VbCr
Do
	Dim nResult
	nResult = crt.Screen.WaitForStrings(vWaitFors, 10)
Select Case nResult
Case 0
Exit Do
Case 1
	crt.Screen.Send "esbain"  & VbCr
	crt.Screen.WaitForString "assword:"
	crt.Screen.Send ".2esbain1"  & VbCr
	CONNECT = crt.Screen.WaitForString ("#", 1)
	If CONNECT = 0 Then
		crt.Screen.WaitForString "sername:"
		crt.Screen.Send "hleal"  & VbCr
		crt.Screen.WaitForString "assword:"
		crt.Screen.Send "abner6466"  & VbCr
		LOGGED = crt.Screen.WaitForString ("#", 1)
		If LOGGED = 0 Then
			crt.Screen.WaitForString "sername:"
			crt.Screen.Send "epc"  & VbCr
			crt.Screen.WaitForString "assword:"
			crt.Screen.Send "*1epc"  & VbCr
		end if
	end if
	Exit Do
Case 2
	crt.Screen.Send "ssh -l esbain "& IPWAN & VbCr
	SSH = crt.Screen.WaitForString ("assword:", 3)
	If SSH = 0 Then
		Exit Sub
	end if
	crt.Screen.Send ".2esbain1"  & VbCr
	crt.Screen.WaitForString "#"
	Exit Do
Case 3
	CLAVE = LCase(inputbox("Pegue la sigla del cliente desde AR", "Acceso a Servicio Dedicado"))
		If CLAVE = "" Then
			Exit Do
		End If
	crt.Screen.Send CLAVE & VbCr
	crt.Screen.WaitForString ">"
	crt.Screen.Send "enable" & VbCr
	crt.Screen.WaitForString "assword: "
	crt.Screen.Send "*1" & CLAVE & VbCr
	Exit Do
Case 4
	crt.Screen.WaitForString "name:"
	crt.Screen.Send "esbain" & VbCr
	crt.Screen.WaitForString "word:"
	crt.Screen.Send ".2esbain1" & VbCr
	HWY = crt.Screen.WaitForString ("failed.", 1)
	If HWY = -1 Then
		crt.Screen.Send "mgc" & VbCr
		crt.Screen.WaitForString "word:"
		crt.Screen.Send ".0mgcsoporte0" & VbCr
	end if
	Exit Do
End Select
Loop
End sub

Sub ingresoSW
	crt.Screen.Synchronous = True
	crt.Session.Disconnect
	crt.Session.Connect "/S Telsa"
	crt.Screen.WaitForString "telsa-2>"
	crt.Screen.Send "ssh -l esbain 186.10.12.137" & VbCr
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send ".2esbain1"  & VbCr
End Sub