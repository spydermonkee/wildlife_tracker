class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('/species/index.html.erb')
  end

  def create
    @one_species = Species.new(params[:species])

    if @one_species.save
      redirect_to :back
    else
      index
    end
  end

  def show
    @regions = Region.all
    @one_species = Species.find(params[:id])
    render('/species/show.html.erb')
  end
end
