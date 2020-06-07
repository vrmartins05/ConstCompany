class Cliente < ApplicationRecord
    belongs_to :user
    has_one :telefone
end
