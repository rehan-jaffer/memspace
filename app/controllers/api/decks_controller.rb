class Api::DecksController < ApplicationController

  def index
    decks = current_user.decks
    render_decks(decks)
  end  

  private

    def render_decks(decks)
      render json: decks, status: 200
    end

end
