class ApplicationController < ActionController::Base

    # making sure we can still sign in and out before action 
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected 

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end
