class Equipamento < ApplicationRecord
  belongs_to :categoria_equipamento
  belongs_to :modelo
  belongs_to :cliente
end
