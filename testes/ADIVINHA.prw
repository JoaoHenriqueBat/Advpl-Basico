#INCLUDE 'protheus.ch'

User function adivinha()
    Local nNum := 0
    Local nChute := 0

    nChute:= FwInputBox("Chute um n�mero","")
    nNum:= RANDOMIZE(0, 100)

    while nChute != nNum
        if (nChute < nNum)
            Alert("N�mero � menor do que o n�mero chutado")
        elseif (nChute > nNum)
            Alert("N�mero � maior do que o n�mero chutado")
        endif
        alert(CVALTOCHAR( nNum ))
        nChute:= FwInputBox("Chute um n�mero","")
    enddo 

    Alert("Parabens voc� acertou!")

Return
