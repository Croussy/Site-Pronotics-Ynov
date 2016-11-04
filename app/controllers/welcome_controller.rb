class WelcomeController < ApplicationController
  def index
    @championnat = Championnat.find_by(name: 'Ligue 1')
    @matches = Match.where( year: 2016).order(:matchday).paginate(:page => params[:page], :per_page => 10)

    p '----------------------'
    p @matches.count
    p '----------------------'

    PredictionJob.perform_async()
  end

  def show
  end
end
