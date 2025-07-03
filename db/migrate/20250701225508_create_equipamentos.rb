class CreateEquipamentos < ActiveRecord::Migration[8.0]
  def change
    create_table :equipamentos do |t|
      t.references :categoria_equipamento, null: false, foreign_key: true
      t.references :modelo, null: false, foreign_key: true
      t.string :serial
      t.string :observacoes
      t.string :status
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
