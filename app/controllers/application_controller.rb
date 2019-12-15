class ApplicationController < ActionController::Base
     protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          # def configure_permitted_parameters
          #      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}

          #      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
          # end
          def configure_permitted_parameters
            additional_params = [:name, :dob]
            devise_parameter_sanitizer.permit(:sign_up, keys: additional_params)
            devise_parameter_sanitizer.permit(:account_update, keys: additional_params)
          end

end