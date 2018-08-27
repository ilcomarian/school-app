module Users
    class SessionsController < Devise::SessionsController
     def new
       self.resource = resource_class.new(sign_in_params)
       params[:redirect_to] = news_url
       store_location_for(resource, params[:redirect_to])
       super
     end
    end
  end