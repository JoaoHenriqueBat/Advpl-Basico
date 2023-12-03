#INCLUDE 'protheus.ch'

User function adivinha()
    Local nNum := 0
    Local nChute := 0

    nChute:= FwInputBox("Chute um número","")
    nNum:= RANDOMIZE(0, 100)

    while nChute != nNum
        if (nChute < nNum)
            Alert("Número é menor do que o número chutado")
        elseif (nChute > nNum)
            Alert("Número é maior do que o número chutado")
        endif
        alert(CVALTOCHAR( nNum ))
        nChute:= FwInputBox("Chute um número","")
    enddo 

    Alert("Parabens você acertou!")

Return
