#INCLUDE 'protheus.ch'

User function MODELO01()

    Local cAlias := 'SB1'
    Private cTitulo := 'Cadastro - AXCadastro'
    Private lVldExc := .T.
    Private lVldAlt := .T.

    AXCadastro(cAlias, cTitulo, lVldExc, lVldAlt)

Return
