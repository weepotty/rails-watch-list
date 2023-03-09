class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all
  end

  def show
    @list
  end

  def new
    @list = List.new
  end


  private

  def set_list
    @list = List.find(params[:id])
  end

  # def list_params
  #   params.require(:list).permit(:name)
  # end


end
