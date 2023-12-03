#INCLUDE 'protheus.ch'
#INCLUDE 'topconn.ch'

User function BANCO003()

    Local aArea := SB1->(GetArea())
    Local cQuery := ''
    Local aDados := {}
    Local nCount:= 0

    cQuery := " SELECT B1_DESC AS DESCRICAO "+CRLF
    cQuery += " ,B1_COD AS CODIGO "+CRLF
    cQuery += " FROM "+CRLF
    cQuery += RetSqlName("SB1")+" SB1 "+CRLF
    cQuery += " WHERE 1=1 "+CRLF
    cQuery += " AND B1_MSBLQL != '1' "

    TCQuery cQuery New Alias "TMP"

    While !TMP->(Eof())
        AADD(aDados,TMP->CODIGO) 
        AADD(aDados,TMP->DESCRICAO)
        TMP->(DbSkip())
    enddo
    
        for nCount := 1 to Len(aDados)
            Alert(aDados[nCount])
        Next nCount

        TMP->(DbCloseArea())
        RestArea(aArea)

Return
