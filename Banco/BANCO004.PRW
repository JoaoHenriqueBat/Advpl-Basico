#INCLUDE 'protheus.ch'

User function BANCO004()

    Local aArea := SB1->(GetArea())

    DBSELECTAREA(aArea)
    SB1->(DBSETORDER(1))
    SB1->(DBGOTOP())


    Begin Transaction
        MsgInfo("A descri��o do produto ser� alterada","Aten��o!")
        if SB1->(DbSeek(FWXFilial('SB1')+'00002'))
            RECLOCK("SB1",.F.)
            REPLACE B1_DESC WITH "CAJU"
            SB1->(MSUNLOCK())
        endif
        MsgInfo("Altera��o concluida!","Concluido!")
    End Transaction

    RestArea(aArea)

Return
