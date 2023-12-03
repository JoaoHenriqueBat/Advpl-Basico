#INCLUDE 'protheus.ch'

User function alertar(e)
    MsgAlert(e)
Return

User function alertar2(e)
    Alert(e)
Return

User function Teste(a, b)
    Alert(CVALTOCHAR(a == b))
Return

User function tcase(e)
    Do Case
        Case(e = 1)
            Alert("ok1")
        Case(e = 2)
            Alert("ok2")
        OtherWise
            Alert("OtherWise")
    EndCase
Return



