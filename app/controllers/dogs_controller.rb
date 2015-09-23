class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  protected

  def dog_params
    params.require(:dog).permit(:name, :breed, :size, :kids, :age,
    :gender, :fixed, :shelter_id )
  end
end
