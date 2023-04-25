class SeasoningsController < ApplicationController
  def create 
    Seasoning.create(seasoning_params)
  end

  private
  def seasoning_params
    params.require(:seasoning).permit(:name).merge(item_id: params[:item_id])
  end
end
