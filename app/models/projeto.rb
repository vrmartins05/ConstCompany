class Projeto < ApplicationRecord
  belongs_to :engenheiro
  belongs_to :cliente
  belongs_to :material
  belongs_to :evento
  belongs_to :funcionario
end
