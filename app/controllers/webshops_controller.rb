class WebshopsController < ApplicationController
  def index
    @webshops = Webshop.reorder('created_at ASC').page params[:page]
    @featured_webshop = Webshop.where(featured: true).first
  end
end
