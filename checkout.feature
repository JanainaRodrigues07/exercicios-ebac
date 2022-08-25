Feature: Tela de cadastro - Checkout

    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que eu seja cliente da EBAC_SHOP

    Scenario: Preencher todos os campos obrigatórios
        When eu preencher todos os campos obrigatórios no checkout
        E clicar no botão "Finalizar compras"
        Then a ação deve ser concluída com sucesso

     Scenario: Email com formato inválido
        When eu digitar o email "zzzi234.abc"
        E clicar no botão "Finalizar compras"
        Then deve exibir uma mensagem de erro: "Email inválido"

    Scenario: Não preencher o campo "Nome"
        When eu deixar o campo "Nome" em branco
        E clicar no botão "Finalizar compras"
        Then deve exibir uma mensagem de alerta: "O campo 'Nome' é um campo obrigatório"

    Scenario: Não preencher o campo "Endereço de email"
        When eu deixar o campo "Endereço de email" em branco
        E clicar no botão "Finalizar compras"
        Then deve exibir uma mensagem de alerta: "O campo 'Endereço de email' é um campo obrigatório"

    

    
