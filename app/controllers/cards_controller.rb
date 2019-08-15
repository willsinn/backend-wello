class CardsController < ApplicationController
  def create
    card = Card.create(card_params)
    render json: card
  end

  def update
  end

  def destroy
    card = Project.find(params[:id])
    card.destroy
  end
  private
    def card_params
      params.permit(:item_id, :subject, :detail)
    end
end
