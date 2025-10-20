# A controller in Rails is where you define what happens when someone visits a page (a route).
# Each controller handles a group of related actions — for example, a GamesController would 
# handle everything related to games (like creating, editing, listing them, etc.).

# app/controllers/games_controller.rb
# Handles all actions related to games (creating, listing, etc.)

class GamesController < ApplicationController
  # Display the form for creating a new game
  def new
    @game = Game.new
  end

  # Handle form submission to create a new game
  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path, notice: "Game created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Display all games
  def index
    @games = Game.all
  end

  private

  # Strong parameters to allow only the required attributes
  def game_params
    params.require(:game).permit(
      :date,
      :time,
      :skill_level,
      :location,
      :doubles,
      :contact_info
    )
  end
end
