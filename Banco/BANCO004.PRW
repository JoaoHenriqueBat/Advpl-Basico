#INCLUDE 'protheus.ch'

User function BANCO004()

    Local aArea := SB1->(GetArea())

    DBSELECTAREA(aArea)
    SB1->(DBSETORDER(1))
    SB1->(DBGOTOP())


    Begin Transaction
        MsgInfo("A descrição do produto será alterada","Atenção!")
        if SB1->(DbSeek(FWXFilial('SB1')+'00002'))
            RECLOCK("SB1",.F.)
            REPLACE B1_DESC WITH "CAJU"
            SB1->(MSUNLOCK())
        endif
        MsgInfo("Alteração concluida!","Concluido!")
    End Transaction

    RestArea(aArea)

Return
