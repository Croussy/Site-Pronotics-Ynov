class WelcomeController < ApplicationController
  def index
    @championnat = Championnat.find_by(name: 'Premier league')
    @matches = Match.where(championnat: @championnat).order(:matchday).paginate(:page => params[:page], :per_page => 3)
  end

  def show
  end
end
