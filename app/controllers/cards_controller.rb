class CardsController < ApplicationController
  def index
    cards = Item.all
    render json: cards
  end
  def show
    card = Item.find(params[:id])
    render json: card
  end
  def create
    card = Card.create(card_params)
    render json: card
  end

  def update
    card = Card.find(params[:id])
    card.update(card_params)
    render json: card
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
  end
  private
    def card_params
      params.permit(:item_id, :subject, :detail)
    end
end
