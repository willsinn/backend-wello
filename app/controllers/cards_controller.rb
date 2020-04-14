class CardsController < ApplicationController
  def index
    cards = Board.all
    board = Board.find(params[:board_id])
    board_cards = board.cards.map do |card|
      card.board_id == board.id
    end
    render json: board_cards
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
  private
    def card_params
      params.permit(:board_id, :goal, :card_desc, :archived)
    end
end
