class DogBreed < ApplicationRecord
  validates :breed_name, presence: true , uniqueness: true

  has_many :sub_breeds #ass
end
