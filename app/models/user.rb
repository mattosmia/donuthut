class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true
  
 def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :remember_me, :name, :dob, :address1, :address2, :county, :phone)
  end

  has_many :orders

end