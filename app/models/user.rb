class User < ApplicationRecord
    has_many :articles

     validates :first_name, :last_name,  :phone, :password, :confirm_password, :email,  presence: true
end
