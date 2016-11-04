class WelcomeController < ApplicationController
  def index
    @current_year = 2016
    @championnat = Championnat.find_by(name: 'Ligue 1')

    unless params[:page]
      params[:page] = @championnat.matches.where(year: @current_year).count / 10
    end

    @matches = Match.where(championnat: @championnat, year: @current_year).order(:matchday).paginate(:page => params[:page], :per_page => 10)
  end

  def show
  end
end
