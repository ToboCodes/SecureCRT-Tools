#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	SSID = inputbox("Ingrese el nombre de la red")
	PWD = inputbox("Indique password de la red")
	crt.Screen.Send "wireless mssid ifconfig ssid_id=0 ssid="& SSID &" apisolation=disabled secmode=wpa-psk WPAPSKkey="& PWD &" WPAPSKversion=WPA+WPA2" & VbCr
End Sub