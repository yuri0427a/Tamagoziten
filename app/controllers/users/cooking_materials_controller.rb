class Users::CookingMaterialsController < ApplicationController
    def index
    end

    def create
        @material = CookingMaterial.new(matarial_params)
        #@materials = recipe_id
        @material.save
        redirect_back(fallback_location: root_path)
    end

  private
  def matarial_params
    params.require(:matarial).permit(:material_name, :material_quantity)  
  end
end
