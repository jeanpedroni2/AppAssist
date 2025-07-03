class CreateProblemas < ActiveRecord::Migration[8.0]
  def change
    create_table :problemas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
