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

Quest Property CentralQuest auto

; Variables
Int Property LowAmountOfRespect auto
Int Property MediumAmountOfRespect auto
Int Property HighAmountOfRespect auto
Int Property MaxAmountOfRespect auto
Int Property ProvingHonorRespect auto 
Int Property SilverHandRespect auto
Int Property BloodsHonorRespect auto


Function RewardPlayerWithRespect(Actor RewardFrom, int amountType = 0)
    if RewardFrom == (CentralQuest as CompanionsHousekeepingScript).Farkas.GetReference() as Actor
        Int NewFarkasRespect = FarkasRespect.GetValueInt() + GetNewRespect(amountType)
        FarkasRespect.SetValueInt(NewFarkasRespect)
    elseif RewardFrom == (CentralQuest as CompanionsHousekeepingScript).Aela.GetReference() as Actor
        Int NewAelaRespect = AelaRespect.GetValueInt() + GetNewRespect(amountType)
        AelaRespect.SetValueInt(NewAelaRespect)
    elseif RewardFrom == (CentralQuest as CompanionsHousekeepingScript).Vilkas.GetReference() as Actor
        Int NewVilkasRespect = VilkasRespect.GetValueInt() + GetNewRespect(amountType)
        VilkasRespect.SetValueInt(NewVilkasRespect)
    elseif RewardFrom == (CentralQuest as CompanionsHousekeepingScript).Skjor.GetReference() as Actor
        Int NewSkjorRespect = SkjorRespect.GetValueInt() + GetNewRespect(amountType)
        SkjorRespect.SetValueInt(NewSkjorRespect)
    endif
EndFunction

Int Function GetNewRespect(int AmountType)
    if AmountType == 0
        Return LowAmountOfRespect
    elseif AmountType == 1
        Return MediumAmountOfRespect
    elseif AmountType == 2
        Return HighAmountOfRespect
    elseif AmountType == 3
        Return MaxAmountOfRespect
    endif
EndFunction