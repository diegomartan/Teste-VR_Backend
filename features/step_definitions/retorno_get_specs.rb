# Nesse step estou acessando a API onde o endpoint etá dentro da variável "@base_uri"
Dado('que acesso a api {string} com o endpoint {string}') do |_nome_api, endpoint|
  @base_uri = endpoint
end

# Realizando a reuisição do tipo GET através do HTTParty, guardado da variável "@result"
Quando('realizo uma requisição do tipo GET') do  
  @result = HTTParty.get(@base_uri, verify: false) 
end


Entao('o JSON retornado pelo serviço deve possuir a chave {string}') do |chave|
  response = @result.parsed_response # obtendo resultado no formato JSON
  @establishment = response[chave] 

  expect(@result.code).to eql(200) 
  expect(response.key?(chave)).to be(true)  # Validando através da variável "response" que a chave "chave" esteja retornando como verdadeira
end


# Usando o método "sample" para imprimir um elemento aleatório da array
Entao('deverá imprimir um tipo de estabelecimento') { puts @establishment.sample }

  