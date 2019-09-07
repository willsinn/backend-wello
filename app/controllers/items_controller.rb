class ItemsController < ApplicationController
  def index
    items = Item.all
    project = Project.find(params[:project_id])
    project_items = project.items.map do |item|
      item.project_id == project.id
    end
    render json: project_items
  end
  def show
    item = Item.find(params[:id])
    render json: item
  end
  def create
    item = Item.create(item_params)
    render json: item
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    render json: item
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end
  private
    def item_params
      params.permit(:project_id, :objective)
    end
end
