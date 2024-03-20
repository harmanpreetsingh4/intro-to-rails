class CreateDogCompetitions < ActiveRecord::Migration[7.1]
  def change
    create_table :dog_competitions do |t|
      t.string :competition_name
      t.date :competition_date

      t.timestamps
    end
  end
end
