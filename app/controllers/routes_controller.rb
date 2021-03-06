class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all.order('created_at DESC')
  end

  def new
    @route = Route.new
  end

  def edit

  end

  def show
  end

  def create
    @route = Route.new route_params

    params[:route][:railway_stations_ids].each do |station_id|
      unless station_id.empty?
        @route.railway_stations << RailwayStation.find(station_id)
      end
    end

    if @route.save
      redirect_to @route, notice: 'Route was successfully created.'
    else
      render :new
    end
  end

  def update
    stations = []

    params[:route][:railway_stations_ids].each do |station_id|
      unless station_id.empty?
        stations << RailwayStation.find(station_id)
      end
    end

    @route.railway_stations = stations

    if @route.save
      redirect_to @route, notice: 'Route was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @route.destroy
    redirect_to routes_url, notice: 'Route was successfully destroyed.'
  end

  private

  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:name)
  end
end
