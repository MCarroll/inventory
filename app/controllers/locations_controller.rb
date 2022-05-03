class LocationsController < ApplicationController
  def index
    @locations = Location.select(:warehouse, "count(:code)").group(:warehouse)
  end

  def new
  end

  def import
    Location.import(params[:file])
    flash[:notice] = "Successfully imported CSV file."
    redirect_to locations_path
  end
end
