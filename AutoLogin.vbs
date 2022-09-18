#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Dim vWaitFors
vWaitFors = Array("User ID", "media gateway", "Username : ", "sername: ", "refused", "assword: ", "Login:", "authentication")
Sub Main
	IP = inputbox("Ingrese la dirección IP a conectar", "Script AutoLogin")
	If IP = "" Then
		Exit Sub
	end if
	crt.Screen.Synchronous = True
	crt.Session.Disconnect
	crt.Session.Connect "/S Telsa"
	crt.Screen.WaitForString "telsa-2>"
	crt.Screen.Send "ping "& IP & VbCr
	PNG = crt.Screen.WaitForString ("(5/5)", 1.5)
	If PNG = 1 Then
		Exit Sub
	end if
	crt.Screen.Send "telnet "& IP & VbCr
Do
	Dim nResult
	nResult = crt.Screen.WaitForStrings(vWaitFors, 10)
Select Case nResult
Case 0
Exit Do
Case 1
	crt.Screen.Send "admin" & VbCr
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "admin" & VbCr
	Exit Do
Case 2
	crt.Screen.Send "admin" & VbCr
	ACCESO = crt.Screen.WaitForString (")>", 1)
	If ACCESO = 0 Then
		crt.Screen.Send "instalador" & VbCr
	end if
	crt.Screen.Send "enable" & VbCr
	crt.Screen.WaitForString "assword:"
	crt.Screen.Send "radon" & VbCr
	Exit Do
Case 3
	crt.Screen.Send "entel" & VbCr
	crt.Screen.WaitForString "assword :"
	crt.Screen.Send "sipinstalador" & VbCr
	ACCESS = crt.Screen.WaitForString ("host]", 2)
	If ACCESS = -1 Then
		crt.Screen.Send "telnet "& IP & VbCr
		crt.Screen.WaitForString "sername :"
		crt.Screen.Send "admin" & VbCr
		crt.Screen.WaitForString "assword :"
		crt.Screen.Send "admin" & VbCr
	end if
	crt.Screen.Send VbCr
	SESS = crt.Screen.WaitForString ("Session 2", 2)
	If SESS = -1 Then
		crt.Screen.Send "2" & VbCr
	End If
	Exit Do
Case 4
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
			SIGLA = LCase(inputbox("Pegue la sigla del cliente desde AR", "Habilitacion Modo Administrador"))
				If SIGLA = "" Then
				Exit Do
			End If
			crt.Screen.Send "*1"& SIGLA & VbCr
		end if
	end if
	Exit Do
Case 5
	crt.Screen.Send "ssh -l mat1 "& IP & VbCr
	SSH = crt.Screen.WaitForString ("assword:", 3)
	If SSH = 0 Then
		Exit Sub
	end if
	crt.Screen.Send ".1mat11"  & VbCr
	crt.Screen.WaitForString "#"
	crt.Screen.Send "enable"  & VbCr
	SISH = LCase(inputbox("Pegue la sigla del cliente desde AR", "Habilitacion Modo Administrador"))
	If SISH = "" Then
		Exit Do
	end If
	crt.Screen.Send "*1"& SISH & VbCr
	Exit Do
Case 6
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
Case 7
	crt.Screen.Send "root" & VbCr
	crt.Screen.WaitForString "assword:"
	crt.Screen.Send "adminHW" & VbCr
	DUO = crt.Screen.WaitForString ("wrong", 1)
	If DUO = -1 Then
		crt.Screen.Send "root" & VbCr
		crt.Screen.WaitForString "assword:"
		crt.Screen.Send "admin" & VbCr
	end if
	Exit Do
Case 8
	crt.Screen.WaitForString "name:"
	crt.Screen.Send "mat1" & VbCr
	crt.Screen.WaitForString "word:"
	crt.Screen.Send ".1mat1soporte1" & VbCr
	HWY = crt.Screen.WaitForString ("failed.", 1)
	If HWY = -1 Then
		crt.Screen.WaitForString "name:"
		crt.Screen.Send "mgc" & VbCr
		crt.Screen.WaitForString "word:"
		crt.Screen.Send ".0mgcsoporte0" & VbCr
	end if
	Exit Do
End Select
Loop
End Sub