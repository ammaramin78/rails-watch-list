class ListsController < ApplicationController


  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.all
    @list = List.find(params[:id])
  end

  def create
    @lists = List.create(list_params)
    redirect_to lists_path
  end

  def new
    @list = List.new
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
