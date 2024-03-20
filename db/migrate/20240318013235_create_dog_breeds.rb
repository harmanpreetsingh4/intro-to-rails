class CreateDogBreeds < ActiveRecord::Migration[7.1]
  def change
    create_table :dog_breeds do |t|
      t.string :breed_name

      t.timestamps
    end
  end
end
