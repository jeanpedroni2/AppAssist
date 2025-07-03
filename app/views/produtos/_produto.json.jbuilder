json.extract! produto, :id, :descricao, :tipoproduto_id, :valor, :marca_id, :unidademedida_id, :status, :movestoque, :created_at, :updated_at
json.url produto_url(produto, format: :json)
