class CharactersController < ApplicationController
  def index 
    @characters = Character.all 

    render json: @characters, include: :game
  end

  def show 
    @character = Character.find(params[:id])
    
    render json: @character, include: :game
  end
end
