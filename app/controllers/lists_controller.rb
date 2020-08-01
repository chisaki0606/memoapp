class ListsController < ApplicationController
  def index
    @lists = List.all.order(created_at: :desc)
  end

  def show
    @list = List.find_by(id: params[:id])
  end

  def new
  end

  def create
    @list = List.new(content: params[:content])
    @list.save
    redirect_to("/")
  end

  def edit
    @list = List.find_by(id: params[:id])
  end

  def update
    @list = List.find_by(id: params[:id])
    @list.content = params[:content]
    @list.save
    redirect_to("/")
  end

end
