Funcionalidade: Tela de cadastro - Checkout

Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu seja cliente da EBAC_SHOP

Cenário: Preencher todos os campos obrigatórios
Quando eu preencher todos os campos obrigatórios no checkout
E clicar no botão "Finalizar compras"
Então a ação deve ser concluída com sucesso

Cenário: Email com formato inválido
Quando eu digitar o email "zzzi234.abc"
E clicar no botão "Finalizar compras"
Então deve exibir uma mensagem de erro: "Email inválido"

Cenário: Não preencher o campo "Nome"
Quando eu deixar o campo "Nome" em branco
E clicar no botão "Finalizar compras"
Então deve exibir uma mensagem de alerta: "O campo 'Nome' é um campo obrigatório"

Cenário: Não preencher o campo "Endereço de email"
Quando eu deixar o campo "Endereço de email" em branco
E clicar no botão "Finalizar compras"
Então deve exibir uma mensagem de alerta: "O campo 'Endereço de email' é um campo obrigatório"






    

    
