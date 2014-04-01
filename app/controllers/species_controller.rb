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

  def delete_list
    @species = Species.all
    render('/species/destroy.html.erb')
  end

  def destroy
    @one_species = Species.find(params[:id])
    @one_species.destroy
    delete_list
  end

  def edit
    @one_species = Species.find(params[:id])
    if params[:species]
      if @one_species.update(params[:species])
        redirect_to "/species/#{@one_species.id}"
      else
        render("/species/edit.html.erb")
      end
    end
  end
end
