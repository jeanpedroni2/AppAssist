class CreateUnidadeMedidas < ActiveRecord::Migration[8.0]
  def change
    create_table :unidade_medidas do |t|
      t.string :descricao
      t.string :sigla

      t.timestamps
    end
  end
end
