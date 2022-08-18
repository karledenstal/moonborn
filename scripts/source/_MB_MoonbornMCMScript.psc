Scriptname _MB_MoonbornMCMScript extends SKI_ConfigBase

GlobalVariable Property TotalRespectEarned auto 

Event OnConfigInit()
    ModName = "Moonborn"
EndEvent

Event OnPageReset(string Page)
    SetCursorFillMode(TOP_TO_BOTTOM)
    AddHeaderOption("Respect")
    AddTextOption("Total respect earned", TotalRespectEarned.GetValueInt())
EndEvent

