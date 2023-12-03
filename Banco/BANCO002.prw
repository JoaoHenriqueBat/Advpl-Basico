#INCLUDE 'protheus.ch'

User function BANCO002()

    Local aArea := SB1->(GetArea())
    Local cMsg := ''


    dbSelectArea("SB1")
    SB1->(DbSetOrder(1))
    SB1->(DbGoTop())

    cMsg := Posicione("SB1",;
                      1,;
                      FWXFilial("SB1")+"00002",;
                      "B1_COD")
    Alert(cMsg)
    RestArea(aArea)
Return
