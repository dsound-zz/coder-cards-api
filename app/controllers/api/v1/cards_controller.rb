class Api::V1::CardsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]
  before_action :find_card, only: [:update, :destroy]
  # before_destroy :destroy_deck_cards

  def index
    @cards = Card.all
    render json: @cards, status: :accepted
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      render json: @card, status: :ok
    else
      render json: {errors: @card.errors.full_messages}
    end
  end
  
  def update
   @card.update(card_params)
    if @card.save
      render json: @card, status: :ok
    else
     render json: { errors: @card.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # if curr_user.id == @card.user_id
      @card.delete
      render json: "card deleted"
    # else
      # render json: { errors: "You are not authorized to delete"}
    # end
  end


  private
  
  def find_card
    @card = Card.find(params[:id])
  end

  def card_params 
    params.permit(:front, :back, :deck_id)
  end

  # def destroy_deck_cards
  #   self.deck_cards.destory_all
  # end

end
