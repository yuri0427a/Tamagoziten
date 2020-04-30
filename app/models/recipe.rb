class Recipe < ApplicationRecord
    #アソシエーション（親）
    belongs_to :user
    # アソシエーション（子）
    has_many :cooking_materials, dependent: :destroy
    has_many :cooking_procedures, dependent: :destroy
    has_many :recipe_favorites, dependent: :destroy
    has_many :recipe_reviews, dependent: :destroy
    has_many :recipe_category_relations
    has_many :categories, through: :recipe_category_relations
    # レシピ投稿画像 refile定義
    attachment :recipe_image
    # cocoon定義
    accepts_nested_attributes_for :cooking_materials
    accepts_nested_attributes_for :cooking_procedures
    # いいね定義
    def favorited_by?(user)
    recipe_favorites.where(user_id: user.id).exists?
    end
    # バリデーション
    validates :name, presence: true, length: {maximum: 15}
    validates :description, length: {maximum: 30}
    validates :egg_quantity, presence: true
    validates :serving, presence: true
    validates :cooking_time, presence: true
    
end
