class Recipe < ApplicationRecord
    has_many :cooking_materials, dependent: :destroy
    has_many :cooking_procedures, dependent: :destroy
    has_many :recipe_favorites, dependent: :destroy
    has_many :recipe_reviews, dependent: :destroy
end
