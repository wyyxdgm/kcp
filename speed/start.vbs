Dim RunKcptun
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")
'��ȡ�ļ�·��
currentPath = fso.GetFile(Wscript.ScriptFullName).ParentFolder.Path & "\"
'������в���
exeConfig = "client_windows_amd64.exe -l :1081 -r japan10.zmfanqiang.com:1125 -key test -mtu 1400 -sndwnd 256 -rcvwnd 2048 -mode fast2 -dscp 46"
'��־�ļ�
logFile = "kcptun.log"
'ƴ��������
cmdLine = "cmd /c " & currentPath & exeConfig & " > " & currentPath & logFile & " 2>&1"
'�������
WshShell.Run cmdLine, 0, False
'�ȴ�1��
'WScript.Sleep 1000
'��ӡ��������
'Wscript.echo cmdLine
Set WshShell = Nothing
Set fso = Nothing
'�˳��ű�
WScript.quit