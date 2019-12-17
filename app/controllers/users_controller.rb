class UsersController < ApplicationController
   def edit
     @user = User.find(params[:id])
   end


   def update
     @user = User.find(params[:id])
     if @user.update(user_params)
       redirect_to adminpanel_path
     else
       render 'edit'
     end
   end
   def upgradeadmin
        @user = User.find(params[:id])
        @user.update_attribute(:admin, true)
        redirect_to '/admin/users'
    end
    
    def downgradeadmin
        @user = User.find(params[:id])
       @user.update_attribute(:admin, false)
         redirect_to '/admin/users'
    end    

end