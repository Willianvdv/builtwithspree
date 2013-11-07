class WebshopsController < ApplicationController
  def index
    @webshops = Webshop.reorder('created_at ASC')
    @featured_webshop = Webshop.where(featured: true).first
  end
end
