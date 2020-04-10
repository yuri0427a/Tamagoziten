class RecipeReview < ApplicationRecord
    belongs_to :user
    belongs_to :recipe
    attachment :cooking_image
    validates :impression, presence: true
end
