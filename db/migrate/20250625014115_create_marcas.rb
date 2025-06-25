class CreateMarcas < ActiveRecord::Migration[8.0]
  def change
    create_table :marcas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
