class HomeController < ApplicationController
  def index
    @museos = Museum.all
  end
end
