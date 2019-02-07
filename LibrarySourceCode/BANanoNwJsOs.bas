B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings: 12

Sub Class_Globals

	Private BANano As BANano 'ignore
	
	Private os As BANanoObject
	
End Sub

Public Sub Initialize
	
	Private nw As BANanoObject
	
	nw.Initialize("nw")
	
	os = nw.RunMethod("require", "os")
	
End Sub

'
'A string constant defining the operating system-specific end-of-line marker
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_eol</link>
Sub EOL() As String
	Return os.GetField("EOL").Result
End Sub

'
'The os.arch() method returns a string identifying the operating system CPU architecture for which the Node.js binary was compiled.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_arch</link>
Sub Arch() As String
	Return os.RunMethod("arch", Null).Result
End Sub

'
'Returns an object containing commonly used operating system specific constants for error codes, process signals, and so on.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_constants</link>
Sub Constants() As Map
	Return os.GetField("constants").Result
End Sub

'
'The os.cpus() method returns an array of objects containing information about each logical CPU core.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_cpus</link>
Sub Cpus() As List
	Return os.RunMethod("cpus", Null).Result
End Sub

'
'The os.endianness() method returns a string identifying the endianness of the CPU for which the Node.js binary was compiled.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_endianness</link>
Sub Endianness() As String
	Return os.RunMethod("endianness", Null).Result
End Sub

'
'The os.freemem() method returns the amount of free system memory in bytes as an integer.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_freemem</link>
Sub Freemem() As Int
	Return os.RunMethod("freemem", Null).Result
End Sub

'
'Currently not implemented!
'
'The os.getPriority() method returns the scheduling priority for the process specified by pid. If pid is not provided, or is 0, the priority of the current process is returned.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_getpriority_pid</link>
Sub GetPriority(PID As Int)
End Sub

'
'The os.homedir() method returns the home directory of the current user as a string.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_homedir</link>
Sub Homedir() As String
	Return os.RunMethod("homedir", Null).Result
End Sub

'
'The os.hostname() method returns the hostname of the operating system as a string.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_hostname</link>
Sub Hostname() As String
	Return os.RunMethod("hostname", Null).Result
End Sub

'
'The os.loadavg() method returns an array containing the 1, 5, and 15 minute load averages.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_loadavg</link>
Sub LoadAvg() As List
	Return os.RunMethod("loadavg", Null).Result
End Sub

'
'The os.networkInterfaces() method returns an object containing only network interfaces that have been assigned a network address.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_networkinterfaces</link>
Sub NetworkInterfaces() As Map
	Return os.RunMethod("networkInterfaces", Null).Result
End Sub

'
'The os.platform() method returns a string identifying the operating system platform as set during compile time of Node.js.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_platform</link>
Sub Platform() As Map
	Return os.RunMethod("platform", Null).Result
End Sub

'
'The os.release() method returns a string identifying the operating system release.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_release</link>
Sub Release() As String
	Return os.RunMethod("release", Null).Result
End Sub

'
'Currently not implemented!
'
'The os.setPriority() method attempts to set the scheduling priority for the process specified by pid. If pid is not provided, or is 0, the priority of the current process is used.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_setpriority_pid_priority</link>
Sub SetPriority(PID As Int, Priority As Int)
End Sub

'
'The os.tmpdir() method returns a string specifying the operating system's default directory for temporary files.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_tmpdir</link>
Sub Tmpdir() As String
	Return os.RunMethod("tmpdir", Null).Result
End Sub

'
'The os.totalmem() method returns the total amount of system memory in bytes as an integer.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_totalmem</link>
Sub Totalmem() As Int
	Return os.RunMethod("totalmem", Null).Result
End Sub

'
'The os.type() method returns a string identifying the operating system name as returned by uname(3). For example 'Linux' on Linux, 'Darwin' on macOS and 'Windows_NT' on Windows.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_type</link>
Sub TypeX() As String
	Return os.RunMethod("type", Null).Result
End Sub

'
'The os.uptime() method returns the system uptime in number of seconds.
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_uptime</link>
Sub Uptime() As Int
	Return os.RunMethod("uptime", Null).Result
End Sub

'
'The os.userInfo() method returns information about the currently effective user
'
'<link>NodeJS Documentation|https://nodejs.org/api/os.html#os_os_userinfo_options</link>
Sub UserInfo() As Map
	Return os.RunMethod("userInfo", Null).Result
End Sub
