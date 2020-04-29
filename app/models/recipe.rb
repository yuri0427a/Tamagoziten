class Recipe < ApplicationRecord
    
    belongs_to :user
    has_many :cooking_materials, dependent: :destroy
    has_many :cooking_procedures, dependent: :destroy
    has_many :recipe_favorites, dependent: :destroy
    has_many :recipe_reviews, dependent: :destroy
    has_many :recipe_category_relations
    has_many :categories, through: :recipe_category_relations
    attachment :recipe_image
    accepts_nested_attributes_for :cooking_materials
    accepts_nested_attributes_for :cooking_procedures
    def favorited_by?(user)
    recipe_favorites.where(user_id: user.id).exists?
    end
    validates :name, presence: true, length: {maximum: 15}
    validates :description, length: {maximum: 30}
    validates :egg_quantity, presence: true
    validates :serving, presence: true
    validates :cooking_time, presence: true
    
end
