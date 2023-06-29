#Requires AutoHotkey v2.0

title := "MINGW64:/d/Daten/Dokuments/AutoHotkey"
path :="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\Git Bash.lnk"
proc := "mintty.exe"

^space::   ;this determins the shortcut  ^ for ctrl space for spacebar
{
    
    if WinExist("ahk_exe" proc)
        if !WinActive()
           {
              WinMaximize
              WinActivate
           }
         else
          {
            WinMinimize
          }
    else
      Run path  ;
}