class CreateDogOwnershipHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :dog_ownership_histories do |t|
      t.string :owner_name
      t.date :ownership_start_date
      t.date :ownership_end_date

      t.timestamps
    end
  end
end
