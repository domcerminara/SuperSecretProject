class PlayersController < ApplicationController
  before_filter :login_required, :except => [:new, :create]

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      session[:player_id] = @player.id
      redirect_to root_url, :notice => "Thank you for signing up! You are now logged in."
    else
      render :action => 'new'
    end
  end

  def edit
    @player = current_player
  end

  def update
    @player = current_player
    if @player.update_attributes(params[:player])
      redirect_to root_url, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end
end
