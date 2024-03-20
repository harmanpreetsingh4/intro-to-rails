class CreateSubBreeds < ActiveRecord::Migration[7.1]
  def change
    create_table :sub_breeds do |t|
      t.string :sub_breed_name
      t.references :dog_breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
