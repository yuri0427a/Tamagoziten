class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
    def after_sign_in_path_for(resource)
      users_user_path(current_user.id)
    end
  def after_sign_out_path_for(resource)
      root_path
  end
    
  before_action :set_search

  def set_search
    @search = User.ransack(params[:q])
    @recipe = @search.result
  end

  protected
 def configure_permitted_parameters
    added_attrs = [:name, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    #sign_upの際にnameのデータ操作を許。追加したカラム。
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

end
