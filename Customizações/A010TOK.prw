#INCLUDE 'protheus.ch'

User function A010TOK()

    Local lExecuta := .T.
    Local cTipo := ALLTRIM(M->B1_TIPO)
    Local cConta := ALLTRIM(M->B1_CONTA)

    if (cTipo = 'PA' .AND. cConta = '0001')
        Alert("Você não pode cadastrar o produto com o tipo PA e conta 001")
        lExecuta := .F.
    endif
    
Return lExecuta
