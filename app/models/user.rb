class User < ApplicationRecord
    has_many :shoes
    has_many :runs, through: :shoes
    has_secure_password
end
