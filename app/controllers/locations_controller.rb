class LocationsController < ApplicationController
  def index
    @locations = Location.select(:warehouse).group(:warehouse).count
  end

  def new
  end

  def import
    Location.import(params[:file])
    flash[:notice] = "Successfully imported CSV file."
    redirect_to locations_path
  end
end
