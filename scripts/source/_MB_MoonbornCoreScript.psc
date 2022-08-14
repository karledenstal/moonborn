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


Function RewardPlayerWithRespect(Actor RewardFrom, int amountType = 0)
    if RewardFrom == (CentralQuest as CompanionsHousekeepingScript).Farkas.GetReference() as Actor
        if amountType == 0
            Int NewFarkasRespect = FarkasRespect.GetValueInt() + LowAmountOfRespect
            FarkasRespect.SetValueInt(NewFarkasRespect)
        elseif amountType == 1
            Int NewFarkasRespect = FarkasRespect.GetValueInt() + MediumAmountOfRespect
            FarkasRespect.SetValueInt(NewFarkasRespect)
        elseif amountType == 2
            Int NewFarkasRespect = FarkasRespect.GetValueInt() + HighAmountOfRespect
            FarkasRespect.SetValueInt(NewFarkasRespect)
        elseif amountType == 3
            Int NewFarkasRespect = FarkasRespect.GetValueInt() + MaxAmountOfRespect
            FarkasRespect.SetValueInt(NewFarkasRespect)
        endif
    elseif RewardFrom == (CentralQuest as CompanionsHousekeepingScript).Aela.GetReference() as Actor
        if amountType == 0
            Int NewAelaRespect = AelaRespect.GetValueInt() + LowAmountOfRespect
            AelaRespect.SetValueInt(NewAelaRespect)
        elseif amountType == 1
            Int NewAelaRespect = AelaRespect.GetValueInt() + MediumAmountOfRespect
            AelaRespect.SetValueInt(NewAelaRespect)
        elseif amountType == 2
            Int NewAelaRespect = AelaRespect.GetValueInt() + HighAmountOfRespect
            AelaRespect.SetValueInt(NewAelaRespect)
        elseif amountType == 3
            Int NewAelaRespect = AelaRespect.GetValueInt() + MaxAmountOfRespect
            AelaRespect.SetValueInt(NewAelaRespect)
        endif
    elseif RewardFrom == (CentralQuest as CompanionsHousekeepingScript).Vilkas.GetReference() as Actor
        if amountType == 0
            Int NewVilkasRespect = VilkasRespect.GetValueInt() + LowAmountOfRespect
            VilkasRespect.SetValueInt(NewVilkasRespect)
        elseif amountType == 1
            Int NewVilkasRespect = VilkasRespect.GetValueInt() + MediumAmountOfRespect
            VilkasRespect.SetValueInt(NewVilkasRespect)
        elseif amountType == 2
            Int NewVilkasRespect = VilkasRespect.GetValueInt() + HighAmountOfRespect
            VilkasRespect.SetValueInt(NewVilkasRespect)
        elseif amountType == 3
            Int NewVilkasRespect = VilkasRespect.GetValueInt() + MaxAmountOfRespect
            VilkasRespect.SetValueInt(NewVilkasRespect)
        endif
    elseif RewardFrom == (CentralQuest as CompanionsHousekeepingScript).Skjor.GetReference() as Actor
        if amountType == 0
            Int NewSkjorRespect = SkjorRespect.GetValueInt() + LowAmountOfRespect
            SkjorRespect.SetValueInt(NewSkjorRespect)
        elseif amountType == 1
            Int NewSkjorRespect = SkjorRespect.GetValueInt() + MediumAmountOfRespect
            SkjorRespect.SetValueInt(NewSkjorRespect)
        elseif amountType == 2
            Int NewSkjorRespect = SkjorRespect.GetValueInt() + HighAmountOfRespect
            SkjorRespect.SetValueInt(NewSkjorRespect)
        elseif amountType == 3
            Int NewSkjorRespect = SkjorRespect.GetValueInt() + MaxAmountOfRespect
            SkjorRespect.SetValueInt(NewSkjorRespect)
        endif
    endif
EndFunction