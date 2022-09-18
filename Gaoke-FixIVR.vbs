#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	crt.Screen.Send "set dsp" & VbCr
	crt.Screen.WaitForString "  ->Startup echo canceller? 'yes' or 'no'"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Startup SCE? 'yes' or 'no'"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Mute? 'yes' or 'no'"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Input Gain((-31dB" & chr(126) & "31dB)"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Enable Silence? 'yes' or 'no'"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Output gain(-31dB" & chr(126) & "31dB)"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->DTMF gain(-31dB" & chr(126) & "0dB)"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Please Select Transmit Mode(0-2)"
	crt.Screen.Send "1" & VbCr
	crt.Screen.WaitForString "  ->Please Input Maximum Fax rate(0-5)"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Enable Fax Error Correction? 'yes' or 'no'"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Redundancy for fax relay high speed packets(0-2)"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Redundancy for fax relay low speed packets(0" & chr(126) & "4)"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->Select Voice Delay Level(0-4)"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  ->**Select the signal tone(0:China 1:Peru 2:Chile)"
	crt.Screen.Send VbCr
	crt.Screen.WaitForString "  Are you sure change configuration? 'yes' or 'no'"
	crt.Screen.Send "yes" & VbCr
End Sub
