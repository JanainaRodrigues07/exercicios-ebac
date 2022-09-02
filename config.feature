Funcionalidade: Configurar Produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu seja cliente da EBAC_SHOP

Cenário: Configurar produto, depois clicar em limpar
Quando selecionar cor, tamanho e quantidade de um produto
E depois clicar em "Limpar"
Então o produto deve voltar ao estado original

Cenário: Selecionar cor, tamanho e quantidade
Quando selecionar cor, tamanho e quantidade de um produto
Então o produto deve exibir a mensagem de sucesso: "Produto adicionado ao carrinho"

Cenário: Não selecionar uma das opções
Quando eu deixar de selecionar cor, tamanho ou quantidade
Então deve exibir a mensagem de alerta: "Selecione as opções do produto antes de adicioná-lo no carrinho"

Esquema do Cenário: Inserir produtos no carrinho
Quando eu inserir a <quantidade> de produto no carrinho
Então deve exibir a <mensagem>

Exemplos:

| quantidade          | mensagem                             |
| inserir 9 produtos  | "Produto adicionado ao carrinho"     |
| inserir 10 produtos | "Produto adicionado ao carrinho"     |
| inserir 11 produtos | "Limite máximo do carrinho excecido" |
