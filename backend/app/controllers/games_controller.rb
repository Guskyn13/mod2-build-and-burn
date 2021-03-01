class GamesController < ApplicationController

  def index 
    @games = Game.all 

    render json: @games, include: :characters
  end

  def show 
    @game = Game.find(params[:id])

    render json: @game, include: :characters
  end

  def create 
    @game = Game.create name:params[:name], rating:params[:rating].to_i, image:params[:image]

    redirect_to "http://localhost:3001/"
  end
end
