class Users::RecipeFavoritesController < ApplicationController
    before_action :authenticate_user!

        def index
            @user = current_user
            @bookmarks = RecipeFavorite.where(user_id: current_user.id).all  #whereメソッド…したカラムの全データを取得できる（allの検索版）
        end

        def create
            @recipe = Recipe.find(params[:recipe_id])
            @favorite = current_user.recipe_favorites.new(recipe_id: @recipe.id)
            @favorite.save
            render :change
        end

        def destroy
            @recipe = Recipe.find(params[:recipe_id])
            @favorite = current_user.recipe_favorites.find_by(recipe_id: @recipe.id)
            @favorite.destroy
            render :change
        end
        
end
