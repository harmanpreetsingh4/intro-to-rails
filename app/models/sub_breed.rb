class SubBreed < ApplicationRecord
  validates :sub_breed_name, presence: true, uniqueness: true

  belongs_to :dog_breed
end
