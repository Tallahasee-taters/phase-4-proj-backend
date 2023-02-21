class User < ApplicationRecord
    has_secure_password

    has_many :purchases
    has_many :shows, through: :purchases

    validates :email, uniqueness: true
    validates :password, presence: true
    validates :password, length: {minimum: 7}
   
end
