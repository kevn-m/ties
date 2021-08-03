class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :username, :first_name, :last_name, :tie_code, :bio, :summary, photos: []
    ])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [
      :username, :first_name, :last_name, :tie_code, :bio, :summary, photos: []
    ])
  end

   def store_url
    # if(request.path != "/users/sign_in" &&
    #   request.path != "/users/sign_up" &&
    #   request.path != "/users/password/new" &&
    #   request.path != "/users/password/edit" &&
    #   request.path != "/users/confirmation" &&
    #   request.path != "/users/sign_out" &&
    #   !request.xhr? && !current_user) # don't store ajax calls
    # then
    session[:previous_url] = request.referrer
    # end
  end

  def after_update_path_for(resource)
    previous_path = session[:previous_url]
    session[:previous_url] = nil
    previous_path || root_path
  end
end
