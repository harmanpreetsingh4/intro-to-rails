class DogBreedsController < ApplicationController
  def index
    @dog_breeds = DogBreed.where("breed_name LIKE ?", "%#{params[:search]}%")
  end
  def show
    @dog_breed = DogBreed.find(params[:id])
    @sub_breeds = @dog_breed.sub_breeds
  end
end
