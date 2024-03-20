class DogBreedsController < ApplicationController
  def index
    @dog_breeds = DogBreed.where("breed_name LIKE ?", "%#{params[:search]}%")
  end
end#
