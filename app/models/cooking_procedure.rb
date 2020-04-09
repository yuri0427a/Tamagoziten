class CookingProcedure < ApplicationRecord
    belongs_to :recipe
    validates :procedure_description, presence: true
end
