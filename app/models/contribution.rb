class Contribution < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :likes
  
  # Datat VALIDATION?
end
