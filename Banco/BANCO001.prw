#INCLUDE 'protheus.ch'

User function BANCO001()

    Local aArea := SB1 -> (GetArea())

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1))
    SB1->(DbGoTop())

    if SB1->(dbSeek(FWXFilial("SB1"+"000002")))
        Alert(SB1->B1_DESC)
    endif

    RestArea(aArea)

Return
