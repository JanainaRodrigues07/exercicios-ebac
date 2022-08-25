Feature: Login na Plataforma

    Como cliente da EBAC-SHOP
    Quero fazer login na plataforma
    Para visualizar meus pedidos

    Background:
        Given que eu seja cliente da EBAC_SHOP

    Scenario Outline: Usuário e senha válidos
        When digitar <usuario> válido
        E <senha> válida
        Then deve ser direcionado para a tela de checkout

        Example:

            | usuário               | senha   |
            | ana@hotmail.com       | 123@abc |
            | fbraga@hotmail.com    | 653zzz@ |
            | julia@hotmail.com     | ju321   |
            | paulolima@hotmail.com | 222lima |


    Scenario: Usuário inválido
        When digitar o usuário "yyyy43@hotmail.com"
        E a senha "123@abc"
        Then deve exibir mensagem de alerta: "Usuário ou senha inválidos"

    Scenario: Senha inválida
        When digitar o usuário "ana@hotmail.com"
        E a senha "qwes@000"
        Then deve exibir mensagem de alerta: "Usuário ou senha inválidos"

    Scenario: Usuário e senha inválidos
        When digitar o usuário "yyyy43@hotmail.com"
        E a senha "qwes@000"
        Then deve exibir mensagem de alerta: "Usuário ou senha inválidos"

