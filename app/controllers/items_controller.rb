class ItemsController < ApplicationController
  def index
    items = Item.all
    board = Board.find(params[:board_id])
    board_items = board.items.map do |item|
      item.board_id == board.id
    end
    render json: board_items
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
      params.permit(:board_id, :objective)
    end
end
