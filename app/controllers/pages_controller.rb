class PagesController < ApplicationController
#     def paid
#     # redirect_to "/cart/clear"
#     flash[:notice] = 'Transaction Complete'
#     @order = Order.last
#     @order.update_attribute(:status , "Paid by User: #{current_user.email}")
#     #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
#   end
    def returnpay
        @order = Order.find(params[:id])
        @order.update-attribute(:status, "Paid with Paypal")
      end

end
