class Category < ApplicationRecord
    has_many :reipe_category_relations
    has_many :recipes, through: :recipe_category_relations

    validates :name, presence: true, uniqueness: true
end
