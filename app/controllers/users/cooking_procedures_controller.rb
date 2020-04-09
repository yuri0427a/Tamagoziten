class Users::CookingProceduresController < ApplicationController
  before_action :authenticate_user! 
      
    def create
      @procedure = CookingProcedure.new(procedure_params)
      @procedure.save
      redirect_back(fallback_location: root_path)
    end

  private
      
    def procedure_params
        params.require(:procedure).permit(:step_number, :procedure_description)  
    end

end
