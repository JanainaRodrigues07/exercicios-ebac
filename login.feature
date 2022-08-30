Funcionalidade: Login na Plataforma

Como cliente da EBAC-SHOP
Quero fazer login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu seja cliente da EBAC_SHOP

Esquema do Cenário: Usuário e senha válidos
Quando digitar <usuario> válido
E <senha> válida
Então deve ser direcionado para a tela de checkout

Exemplos:

| usuário               | senha   |
| ana@hotmail.com       | 123@abc |
| fbraga@hotmail.com    | 653zzz@ |
| julia@hotmail.com     | ju321   |
| paulolima@hotmail.com | 222lima |


Esquema do Cenário: Usuário e senha inválidos
Quando digitar <usuario> inválido
E <senha> inválida
Então deve exibir <mensagem> de alerta

Exemplos:

| usuário            | senha    | mensagem                     |
| yyyy43@hotmail.com | 123@abc  | "Usuário ou senha inválidos" |
| ana@hotmail.com    | qwes@000 | "Usuário ou senha inválidos" |
| yyyy43@hotmail.com | qwes@000 | "Usuário ou senha inválidos" |
