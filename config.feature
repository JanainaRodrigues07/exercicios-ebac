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
Então o produto deve ser adicionado no carrinho com sucesso

Esquema do Cenário: Não selecionar uma das opções
Quando deixar de selecionar uma das opções do produto
Então deve exibir <mensagem> de alerta

Exemplos:

| ação                      | mensagem                                                          |
| não selecionar cor        | "Selecione as opções do produto antes de adicioná-lo no carrinho" |
| não selecionar tamanho    | "Selecione as opções do produto antes de adicioná-lo no carrinho" |
| não selecionar quantidade | "Selecione as opções do produto antes de adicioná-lo no carrinho" |

Esquema do Cenário: Adicionar produtos no carrinho
Quando configurar <produto>
E exceder o limite de 10 produtos adicionados no carrinho
Então deve exibir <mensagem> de alerta

Exemplos:

| quantidade de produtos | ação esperada                                         |
| configurar 9 produtos  | produtos adicionados no carrinho com sucesso          |
| configurar 10 produtos | produtos adicionados no carrinho com sucesso          |
| configurar 11 produtos | exibir mensagem: "Limite máximo do carrinho excecido" |
