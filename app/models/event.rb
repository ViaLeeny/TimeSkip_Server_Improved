class Event < ApplicationRecord
    has_many :contributions 
    has_many :users, through: :contributions
    belongs_to :topic 
end
