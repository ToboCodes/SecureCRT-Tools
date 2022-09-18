#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	crt.Screen.Send "eth device iflist" & VbCr
	crt.Screen.WaitForString "=>", 2
	crt.Screen.Send "dhcp server lease list" & VbCr
End Sub
