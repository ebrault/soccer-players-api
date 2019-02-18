# frozen_string_literal: true

class PlayersController < ProtectedController
  before_action :set_player, only: %i[show update destroy]
  def index
    @players = current_user.players.all
    render json: @players
  end

  def show
    render json: @player
  end

  def create
    @player = current_user.players.build(player_params)
    if @player.save
      render json: @player, status: :created
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy
  end

  private

  def set_player
    @player = current_user.players.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :number, :position, :team)
  end
end
