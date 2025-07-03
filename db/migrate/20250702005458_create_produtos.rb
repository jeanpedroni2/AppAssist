class CreateProdutos < ActiveRecord::Migration[8.0]
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.references :tipo_produto, null: false, foreign_key: true
      t.decimal :valor
      t.references :marca, null: false, foreign_key: true
      t.references :unidade_medida, null: false, foreign_key: true
      t.string :status
      t.string :movestoque

      t.timestamps
    end
  end
end
