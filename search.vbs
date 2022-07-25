Set fso = CreateObject("Scripting.FileSystemObject")
scriptdir = fso.GetParentFolderName(WScript.ScriptFullName)
f = fso.OpenTextFile(scriptdir&"\generic.txt").ReadAll
Set wshshell = CreateObject("Wscript.Shell")
wshshell.run "msedge.exe https://www.bing.com/search?q=search+engine&cvid=ae3d1909090b4902ba5de242a1cc8cc6&aqs=edge..69i57.4096j0j1&pglt=43&FORM=ANNAB1&PC=U531", 9
wscript.sleep(2000)
wshshell.SendKeys(f)