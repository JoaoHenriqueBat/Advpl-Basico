#INCLUDE 'protheus.ch'

User function MBR01()
    
    Local aAlias := 'SB1'
    Private cTitulo := 'Cadastro - MBrowse'
    Private aRotina := {}

    AADD(aRotina, {"Pesquisar",     "AxPesqui"   ,0,1})
    AADD(aRotina, {"Visualizar",    "AxVisual"   ,0,2})
    AADD(aRotina, {"Incluir",       "AxInclui"   ,0,3})
    AADD(aRotina, {"Trocar",        "AxAltera"   ,0,4})
    AADD(aRotina, {"Excluir",       "AxDeleta"   ,0,5})
    AADD(aRotina, {"ALERTAR",       "u_alertar"  ,0,6})

    DBSELECTAREA(aAlias)
    DBSETORDER(1)
    MBrowse(,,,,aAlias)

Return nil
