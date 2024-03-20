class DogOwnershipHistory < ApplicationRecord
  validates :owner_name, presence: true
  validates :ownership_start_date, presence: true
  validates :ownership_end_date, presence: true

  belongs_to :dog_breed
end
