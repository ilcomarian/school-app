class HomeController < ApplicationController
  layout "home_layout"
  def index
    @images = Dir.glob("#{Rails.root}/app/assets/images/slide/*")
    @images_icons = Dir.glob("#{Rails.root}/app/assets/images/icon/*.png")
  end
end
