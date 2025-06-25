class CreateCategoriaEquipamentos < ActiveRecord::Migration[8.0]
  def change
    create_table :categoria_equipamentos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
