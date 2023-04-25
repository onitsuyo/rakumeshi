class ProceduresController < ApplicationController
  def create 
    Procedure.create(procedure_params)
  end

  private 
  def procedure_params 
    params.require(:procedure).permit(:step).merge(recipe_id: params[:recipe_id])
  end
end
