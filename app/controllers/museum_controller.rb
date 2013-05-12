class MuseumController < ApplicationController
  def show
    @museo = Museum.find(params[:id])
  end
end
