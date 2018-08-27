class HomeController < ApplicationController
  # layout :layout_by_resource

  layout "home_layout"
  def index
    @images = Dir.glob("#{Rails.root}/app/assets/images/slide/*")
    @images_icons = Dir.glob("#{Rails.root}/app/assets/images/icon/*.png")
  end


  
end
