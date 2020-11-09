class Shoe < ApplicationRecord
    has_many :runs
    belongs_to :user
end
