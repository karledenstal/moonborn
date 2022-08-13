Scriptname _MB_MoonbornCoreScript extends Quest

; Globals
GlobalVariable Property TotalRespect auto
GlobalVariable Property AelaRespect auto
GlobalVariable Property FarkasRespect auto
GlobalVariable Property VilkasRespect auto
GlobalVariable Property SkjorRespect auto

; Variables
Bool Property bIsRunningAelaRadiant = false auto
Bool Property bIsRunningFarkasRadiant = false auto
Bool Property bIsRunningVilkasRadiant = false auto
Bool Property bIsRunningSkjorRadiant = false auto

int LowAmountOfRespect = 2
int MediumAmountOfRespect = 4
int HighAmountOfRespect = 7
int MaxAmountOfRespect = 10

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
