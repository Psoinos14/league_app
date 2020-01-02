class Api::ChampsController < ApplicationController
  def index
    @champs = Champ.all
    render 'index.json.jb'
  end

  def show
    @champ = Champ.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @champ = Champ.new(
      name: params[:name],
      ult: params[:ult],
      tier: params[:tier])
    @champ.save
    render 'create.json.jb'
  end

  def update
    @champ = Champ.find_by(id: params[:id])
    @champ.name = params[:name]
    @champ.ult = params[:ult]
    @champ.tier = params[:tier]
    @champ.save
    render 'show.json.jb'
  end

  def destroy
    champ = Champ.find_by(id: params[:id])
    champ.destroy
    render 'destroy.json.jb'
  end
end
