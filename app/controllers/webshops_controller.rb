class WebshopsController < ApplicationController
  def index
    @webshops = Webshop.all
  end
end
