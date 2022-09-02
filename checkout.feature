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

Esquema do Cenário: Deixar de preencher campos obrigatórios  Email com formato inválido
Quando eu deixar de preencher o campo <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <estado>, <telefone> e <email>
E clicar no botão "Finalizar compras"
Então deve exibir a <mensagem> de alerta

Exemplos:

| nome    | sobrenome | país     | endereço            | cidade      | estado   | telefone | endereço de email     | mensagem                                             |
|         | "Silva"   | "Brasil" | "Rua A, número 120" | "Fortaleza" | "Ceará"  | 984569275| maria.silva@gmail.com | "O campo 'Nome' é um campo obrigatório"              |
| "Maria" |           | "Brasil" | "Rua A, número 120" | "Fortaleza" | "Ceará"  | 984569275| maria.silva@gmail.com | "O campo 'Sobrenome' é um campo obrigatório"         |
| "Maria" | "Silva"   |          | "Rua A, número 120" | "Fortaleza" | "Ceará"  | 984569275| maria.silva@gmail.com | "O campo 'País' é um campo obrigatório"              |
| "Maria" | "Silva"   | "Brasil" |                     | "Fortaleza" | "Ceará"  | 984569275| maria.silva@gmail.com | "O campo 'Endereço' é um campo obrigatório"          |
| "Maria" | "Silva"   | "Brasil" | "Rua A, número 120" |             | "Ceará"  | 984569275| maria.silva@gmail.com | "O campo 'Cidade' é um campo obrigatório"            |
| "Maria" | "Silva"   | "Brasil" | "Rua A, número 120" | "Fortaleza" |          | 984569275| maria.silva@gmail.com | "O campo 'Estado' é um campo obrigatório"            |
| "Maria" | "Silva"   | "Brasil" | "Rua A, número 120" | "Fortaleza" | "Ceará"  |          | maria.silva@gmail.com | "O campo 'Telefone' é um campo obrigatório"          |
| "Maria" | "Silva"   | "Brasil" | "Rua A, número 120" | "Fortaleza" | "Ceará"  | 984569275|                       | "O campo 'Endereço de email' é um campo obrigatório" |






    

    
