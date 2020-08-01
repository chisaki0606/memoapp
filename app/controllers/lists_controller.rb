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
    if @list.save
      redirect_to("/")
    else
      redirect_to("/lists/#{@list.id}/new")
    end
  end

  def edit
    @list = List.find_by(id: params[:id])
  end

  def update
    @list = List.find_by(id: params[:id])
    @list.content = params[:content]

    if @list.save
      redirect_to("/")
    else
      redirect_to("/lists/#{@list.id}/edit")
    end
  end

  def destroy
    @list = List.find_by(id: params[:id])
    @list.destroy
    redirect_to("/")
  end

end
