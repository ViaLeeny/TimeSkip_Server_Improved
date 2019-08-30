class User < ApplicationRecord
    has_many :contributions
    has_many :events, through: :contributions

    has_secure_password 
end
