class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def import
    Location.import
    location.import(params[:file])
    flash[:notice] = "Locations CSV imported successfully"
    redirect_to locations_path
  end
end
