class QuantidadeMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :projeto
end
