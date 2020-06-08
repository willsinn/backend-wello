class CardsController < ApplicationController
  def index
    cards = Card.all 
    render json: cards
  end
  def show
    card = Card.find(params[:id])
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

  # def destroy
  #   @card = Card.find(params[:id])
  #   @card.destroy
  # end
  def archived
    cards = Card.all

    archived_cards = cards.select {|card| card.archived == true }
    render json: archived_cards
  end
  private
    def card_params
      params.permit(:board_id, :goal, :card_desc, :archived)
    end
end
