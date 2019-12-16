class ApplicationController < ActionController::Base
     protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?
     before_action :load_cart
     

     def users
      @users = User.all
     end
     

     protected

            # def configure_permitted_parameters
            #      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
            
            #      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
            # end
            def configure_permitted_parameters
                additional_params = [:name, :dob, :address1, :address2, :county, :phone]
                devise_parameter_sanitizer.permit(:sign_up, keys: additional_params)
                devise_parameter_sanitizer.permit(:account_update, keys: additional_params)
            end
          
            def load_cart
                @total_cart = 0;
                cart = session[:cart]
                if (cart)
                    cart.each do |id, quantity|
                        item = Item.find_by_id(id)
                        if (item)
                            @total_cart += item.price * quantity
                        end
                    end
                end
                @total_cart = sprintf('%.2f', @total_cart)
            end
end