class ApplicationController < ActionController::Base
  


    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, :family_name, :zipcode)}
      end

      
end
