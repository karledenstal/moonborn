Scriptname _MB_MoonbornCoreScript extends Quest

; Globals
GlobalVariable Property TotalRespect auto
GlobalVariable Property AelaRespect auto
GlobalVariable Property FarkasRespect auto
GlobalVariable Property VilkasRespect auto
GlobalVariable Property SkjorRespect auto

Bool Property bIsRunningAelaRadiant auto conditional
Bool Property bIsRunningFarkasRadiant auto conditional
Bool Property bIsRunningVilkasRadiant auto conditional
Bool Property bIsRunningSkjorRadiant auto conditional

; Variables
Int Property LowAmountOfRespect auto
Int Property MediumAmountOfRespect auto
Int Property HighAmountOfRespect auto
Int Property MaxAmountOfRespect auto

Int Function GetRewardedRespect(string amount)
    if amount == "Medium"
        Return MediumAmountOfRespect
    elseif amount == "High"
        Return HighAmountOfRespect
    elseif amount == "Max"
        Return MaxAmountOfRespect
    else
        Return LowAmountOfRespect
    endif
EndFunction

Int Function GetTotalEarnedRespect()
    Return TotalRespect.GetValueInt()
EndFunction

Function CancelJob(string Leader)
    if Leader == "Aela"
        bIsRunningAelaRadiant = false
    elseif Leader == "Farkas"
        bIsRunningFarkasRadiant = false
    elseif Leader == "Vilkas"
        bIsRunningVilkasRadiant = false
    elseif Leader == "Skjor"
        bIsRunningSkjorRadiant = false 
    endif
EndFunction
