class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         attachment :profile_image
  has_many :recipes, dependent: :destroy
  has_many :recipe_favorites, dependent: :destroy
  has_many :recipe_reviews, dependent: :destroy

#バリテーショ
 validates :name, presence: true, length: {maximum: 10}
 validates :name, length: {maximum: 15}
end
