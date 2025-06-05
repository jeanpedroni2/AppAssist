class CreateClientes < ActiveRecord::Migration[8.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :endereco
      t.string :bairro
      t.string :numero
      t.string :cep
      t.string :uf

      t.timestamps
    end
  end
end
