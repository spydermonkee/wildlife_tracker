class SightingsController < ApplicationController
  def create
    datetime = params[:sighting][:date] + " " + params[:sighting][:time]
    @sighting = Sighting.new(:species_id => params[:sighting][:species_id], :region_id => params[:sighting][:region_id], :datetime => datetime)

    if @sighting.save
      redirect_to :back
    else
      @regions = Region.all
      @one_species = Species.find(params[:sighting][:species_id])
      render("/species/show.html.erb")
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to("/species/#{@sighting.species_id}")
  end

  def edit
    @sighting = Sighting.find(params[:id])
    @regions = Region.all
    if params[:sighting]
      datetime = params[:sighting][:date] + " " + params[:sighting][:time]
      if @sighting.update(:species_id => params[:sighting][:species_id], :region_id => params[:sighting][:region_id], :datetime => datetime)
        redirect_to "/species/#{@sighting.species_id}"
      else
        render("/sightings/edit.html.erb")
      end
    end
  end
end
