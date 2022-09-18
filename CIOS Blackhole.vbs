#$language = "VBScript"
#$interface = "1.0"
crt.Screen.Synchronous = True
Sub Main
	crt.Screen.Send "conf ter" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip access-list standard ACL_ACCESS" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip access-list standard acl_access" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip access-list extended VTY_ACCESS" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "service password-encryption" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip http server" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip http secure-server" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip domain-lookup" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no service pad" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no service udp-small-servers" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no service tcp-small-servers" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip bootp server" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "ip access-list extended ACL_ACCESS" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 200.7.26.0 0.0.0.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 164.77.123.0 0.0.0.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 10.0.0.0 0.255.255.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 172.16.0.0 0.15.255.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 192.168.0.0 0.0.255.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 190.151.44.184 0.0.0.7 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 164.77.71.168 0.0.0.7 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 200.11.85.0 0.0.0.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 200.72.195.0 0.0.0.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 186.67.180.0 0.0.0.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "permit ip 152.231.86.0 0.0.0.255 any" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "line vty 0 4" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "access-class ACL_ACCESS in vrf-also" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "line vty 5 15" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "access-class ACL_ACCESS in vrf-also" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip http server" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip http authentication" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "no ip http timeout-policy idle" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "do copy run star" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "do wr" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "ip domain name entel.cl." & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "crypto key generate rsa" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "1024" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "ip ssh time-out 30" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "ip ssh version 2" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "ip ssh authentication-retries 3" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "username esbain privilege 15 secret .2esbain1" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "username supervision privilege 15 secret .5supervision2" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "username mgc privilege 14 secret .0mgc0" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "username mat1 privilege 14 secret .1mat11" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "line vty 0 4" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "transport input ssh telnet" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "login local" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "line vty 5 15" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "transport input ssh telnet" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "login local" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "do copy run star" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "do wr" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send "!" & VbCr
	crt.Screen.WaitForString "(Config)"
	crt.Screen.Send VbCr
End Sub
