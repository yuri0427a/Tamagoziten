class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :recipes, dependent: :destroy
  has_many :recipe_favorites, dependent: :destroy
  has_many :recipe_reviews, dependent: :destroy


 validates :name, presence: true, length: {maximum: 10}, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'は半角英数字で入力してください'}
 validates :introduction, length: {maximum: 20}

end
