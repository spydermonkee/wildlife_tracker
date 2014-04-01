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
end
