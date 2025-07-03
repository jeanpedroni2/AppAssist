json.extract! equipamento, :id, :categoria_equipamento_id, :modelo_id, :serial, :observacoes, :status, :cliente_id, :created_at, :updated_at
json.url equipamento_url(equipamento, format: :json)
