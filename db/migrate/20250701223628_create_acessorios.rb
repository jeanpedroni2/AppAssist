class CreateAcessorios < ActiveRecord::Migration[8.0]
  def change
    create_table :acessorios do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
