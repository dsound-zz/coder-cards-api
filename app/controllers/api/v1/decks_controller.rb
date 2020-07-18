 class Api::V1::DecksController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]
  before_action :find_deck, only: [:update, :destroy]
  # before_destroy :destroy_deck_cards

  def index
    @decks = Deck.all
    render json: @decks, status: :accepted
  end

  def create
    if curr_user
    @deck = Deck.new(deck_params)
    else
      render json: {errors: @deck_errors.full_messages}
    end
    if @deck.save
      render json: @deck, status: :ok
    else
      render json: {errors: @deck.errors.full_messages}
    end
  end

  def update
   @deck.update(deck_params)
    if @deck.save
      render json: @deck, status: :accepted
    else
     render json: { errors: @deck.errors.full_messages }, status: :unprocessible_entity
    end
  end

  
  def destroy
  
  @deck.delete
      
  render json: "deck deleted"
end



  private 

  def find_deck
    @deck = Deck.find(params[:id])
  end

  def deck_params 
    params.permit(:name, :user_id)
  end

  # def destroy_deck_cards 
  #   self.deck_cards.destroy_all
  # end



end
