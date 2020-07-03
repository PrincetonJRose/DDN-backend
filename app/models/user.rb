class User < ApplicationRecord

    has_many :characters
    
    has_secure_password

    validates :password, uniqueness: true, presence: true, on: :create
    validates :username, uniqueness: true, presence: true
    
end
