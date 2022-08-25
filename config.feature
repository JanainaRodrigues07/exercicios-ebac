Feature: Configurar Produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que eu seja cliente da EBAC_SHOP

    Scenario: Selecionar cor, tamanho e quantidade
        When selecionar cor, tamanho e quantidade de um produto
        Then o produto deve ser adicionado no carrinho com sucesso

    Scenario: Não selecionar tamanho
        When selecionar apenas cor e quantidade de um produto
        Then deve exibir uma mensagem de alerta: "Selecione as opções do produto antes de adicioná-lo no carrinho"

    Scenario: Não selecionar cor
        When selecionar apenas tamanho e quantidade de um produto
        Then deve exibir uma mensagem de alerta: "Selecione as opções do produto antes de adicioná-lo no carrinho"

    Scenario: Adicionar 9 produtos no carrinho
        When configurar 9 produtos 
        Then todos os produtos devem ser adicionados no carrinho com sucesso

    Scenario: Adicionar 10 produtos no carrinho
        When configurar 10 produtos 
        Then todos os produtos devem ser adicionados no carrinho com sucesso

    Scenario: Adicionar 11 produtos no carrinho
        When configurar 11 produtos 
        Then deve exibir uma mensagem de alerta: "Limite máximo do carrinho excecido"

    Scenario: Configurar produto, depois clicar em limpar
        When selecionar cor, tamanho e quantidade de um produto
        E depois clicar em "Limpar"
        Then o produto deve voltar ao estado original