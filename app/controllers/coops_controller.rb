class CoopsController < ApplicationController

  def index
    @coops = Coop.all
  end

  def new
    @coop = Coop.new
  end

  def create
    @coop = Coop.new(coop_params)
  end

  def show
    @coop = Coop.find(params[:id])
  end
end
