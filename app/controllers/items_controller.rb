class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items
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
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
  end
  private
    def item_params
      params.permit(:project_id, :objective)
    end
end
