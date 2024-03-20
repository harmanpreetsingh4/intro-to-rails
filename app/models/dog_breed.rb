class DogBreed < ApplicationRecord
  validates :breed_name, presence: true , uniqueness: true#validation

  has_many :sub_breeds #association
end
