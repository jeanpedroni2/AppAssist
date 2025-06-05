json.extract! cliente, :id, :nome, :cpf, :telefone, :endereco, :bairro, :numero, :cep, :uf, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
