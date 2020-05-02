class Category < ApplicationRecord
    # 多と多アソシエーション
    has_many :recipe_category_relations
    has_many :recipes, through: :recipe_category_relations
    mount_uploader :category_image, ImagesUploader
    
    # バリデーション
    validates :name, presence: true, uniqueness: true
end
