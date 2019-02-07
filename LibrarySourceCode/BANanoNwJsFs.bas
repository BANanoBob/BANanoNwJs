B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings: 12

Sub Class_Globals
	
	Private BANano As BANano 'ignore
	
	Private fs As BANanoObject
	
End Sub

Public Sub Initialize
	
	Private nw As BANanoObject
	
	nw.Initialize("nw")
	
	fs = nw.RunMethod("require", "fs")
	
End Sub

'
'<link>NodeJS Documentation|https://nodejs.org/api/fs.html#fs_fs_readfilesync_path_options</link>
Sub ReadFileSync(Filename As String) As String
	Return fs.RunMethod("readFileSync", Filename).Result
End Sub

'
'<link>NodeJS Documentation|https://nodejs.org/api/fs.html#fs_fs_appendfilesync_path_data_options</link>
Sub AppendFileSync(Filename As String, StringToAppend As String) As String
	Return fs.RunMethod("appendFileSync", Array(Filename, StringToAppend)).Result
End Sub

'
'<link>NodeJS Documentation|https://nodejs.org/api/fs.html#fs_fs_writefilesync_file_data_options</link>
Sub WriteFileSync(Filename As String, StringToWrite As String) As String
	Return fs.RunMethod("writeFileSync", Array(Filename, StringToWrite)).Result
End Sub
