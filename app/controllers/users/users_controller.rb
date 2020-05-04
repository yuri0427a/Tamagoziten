class Users::UsersController < ApplicationController
  before_action :authenticate_user!
    def show
        @user = User.find(params[:id])
        @recipes = Recipe.where(user_id: current_user.id)
        @userrecipes = Recipe.where(user_id: @user.id)
        @bookmarks= RecipeFavorite.where(user_id: current_user.id)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          redirect_to users_user_path(current_user.id), notice: "プロフィールを編集しました！"
        else
          redirect_to users_user_path(@user.id), flash: { error: @user.errors.full_messages }
        end
    end

  private
    def user_params
        params.require(:user).permit(:name, :email, :introduction, :profile_image)  
    end
end
