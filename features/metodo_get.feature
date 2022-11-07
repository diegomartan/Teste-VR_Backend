#language: pt
Funcionalidade: Validar chave typeOfEstablishment

    Eu como usuario
    Desejo validar o retorno da chave e obter um tipo de estabelecimento
    Para concluir este teste


Cenario: Validar chave e obter um estabelecimento
    Dado que acesso a api "VRPAT" com o endpoint "http://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
    Quando realizo uma requisição do tipo GET
    Entao o JSON retornado pelo serviço deve possuir a chave "typeOfEstablishment"
    E deverá imprimir um tipo de estabelecimento    