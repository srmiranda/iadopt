class SheltersController < ApplicationController
  def index
    if params[:search]
      @shelters = Shelter.search(params[:search])
    else
      @shelters = Shelter.order(name: :asc)
    end
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user
    if @shelter.save
      Employee.create(shelter_id: @shelter.id, user_id: current_user.id)
      flash[:notice] = "Shelter created successfully."
      redirect_to shelter_path(@shelter)
    else
      flash[:errors] = @shelter.errors.full_messages.join(", ")
      render :new
    end
  end

  def show
    @shelter = Shelter.find(params[:id])
    @dogs = @shelter.dogs
  end

  def edit
    shelter = Shelter.find(params[:id])
    if signed_in? && current_user == shelter.user
      @shelter = Shelter.find(params[:id])
    elsif !signed_in?
      authenticate_user!
    else
      flash[:alert] = 'You have no permission to edit this shelter.'
      redirect_to shelter_path(shelter)
    end
  end

  def update
    @shelter = Shelter.find(params[:id])
    if @shelter.update_attributes(shelter_params)
      flash[:notice] = 'Shelter successfully updated.'
      redirect_to shelter_path(@shelter)
    elsif !signed_in?
      authenticate_user!
    else
      flash[:alert] = @shelter.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    @shelter = Shelter.find(params[:id])
    if signed_in? && (current_user == @shelter.user)
      @shelter.destroy
      flash[:notice] = 'Shelter removed successfully.'
      redirect_to root_path
    elsif !signed_in?
      authenticate_user!
    else
      flash[:alert] = 'You have no permission to remove this dog.'
      redirect_to shelter_path(@shelter)
    end
  end


  protected

  def shelter_params
    params.require(:shelter).permit(:name, :address, :city, :state, :zip,
    :phone, :url, :website, :email, :user)
  end
end
