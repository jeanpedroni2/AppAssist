class Produto < ApplicationRecord
  belongs_to :tipoproduto
  belongs_to :marca
  belongs_to :unidademedida
end
