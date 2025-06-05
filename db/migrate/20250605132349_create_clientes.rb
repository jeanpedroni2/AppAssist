class CreateClientes < ActiveRecord::Migration[8.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :cpf
      t.string :endereco
      t.string :bairro
      t.string :complemento
      t.string :numero

      t.timestamps
    end
  end
end
