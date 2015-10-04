class DogsController < ApplicationController
  def index
    @dogs = Dog.search(search_params)
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if dog.save
      flash[:notice] = "Dog added successfully!"
      redirect_to dog_path(@dog)
    else
      flash[:errors] = @dog.errors.full_messages.join(", ")
      render :new
    end
  end

  protected

  def dog_params
    params.require(:dog).permit(:name, :breed, :size, :kids, :age,
                                :gender, :fixed, :url, :shelter_id)
  end

  def search_params
    params.require(:dog).permit(:breed, :size, :kids, :age, :gender, :fixed)
  end
end
