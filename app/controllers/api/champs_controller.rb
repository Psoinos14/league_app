class Api::ChampsController < ApplicationController
  def index
    @champs = Champ.all
    render 'index.json.jb'
  end
  def show
    @champ = Champ.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
