class CreateTipoProdutos < ActiveRecord::Migration[8.0]
  def change
    create_table :tipo_produtos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
