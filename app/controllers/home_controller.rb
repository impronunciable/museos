class HomeController < ApplicationController
  def index
    @museos = Museum.order(:id).all
    @favoritos = @museos.slice!(0,9)
  end
end
