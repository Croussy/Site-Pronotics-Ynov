class MatchesController < ApplicationController
  layout 'admin'

  def index
    @matches = Match.all.order(:year, :matchday).paginate(:page => params[:page], :per_page => 380)
    @championnats = Championnat.all
    @datas = Match.sum_goal
  end

  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
    @championnats = Championnat.all
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      puts 'match save'
      redirect_to matches_path
    else
      render 'new'
    end
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    if @match.update(match_params)
      redirect_to @match
    else
      render 'edit'
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to matches_path
  end

  def launch
    PredictionJob.perform_async()
    redirect_to matches_path
  end

  private
  def match_params
    params.require(:match).permit(:matchday, :home_team, :home_prevision, :home_prevision, :home_score, :draw_prevision,
                                  :away_team, :away_prevision, :away_score, :championnat_id)
  end
end
