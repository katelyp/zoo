class CabinetsController < ApplicationController

  before_action :prepare_cabinet, only: [:edit, :update]

  def index
    @cabinets = Cabinet.all.order(name: :asc)
  end

  def edit
  end

  def update
    if @cabinet.update_attributes(cabinet_params)
      flash[:success] = "Cabinet Updated!"
      redirect_to cabinets_path
    else
      render :edit
    end
  end

  private

  def prepare_cabinet
    @cabinet = Cabinet.find(params[:id])
  end

  def cabinet_params
    params.require(:cabinet).permit(:id, :name, :occupiable_id, :occupiable_type)
  end

end
