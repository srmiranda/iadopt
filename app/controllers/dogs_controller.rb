class DogsController < ApplicationController
  def index
    @dogs = Dog.search(search_params)
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    if signed_in?
      @dog = Dog.new
      @shelter = Shelter.find(params[:shelter_id])
    else
      authenticate_user!
    end
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.shelter = Shelter.find(params[:shelter_id])
    if @dog.save
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
