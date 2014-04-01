class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('/species/index.html.erb')
  end

  def create
    species = Species.new(params[:species])

    if species.save
      redirect_to :back
    else

    end
  end
end
