class DogCompetition < ApplicationRecord
  validates :competition_name, presence: true
  validates :competition_date, presence: true

  belongs_to :dog_breed
end
