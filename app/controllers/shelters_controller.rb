class SheltersController < ApplicationController

  def index
    if params[:search]
      @shelters = Shelter.search(params[:search])
    elsif params[:zip]
      @zipcode = params["zip"]["zipcode"]
      @distance = params["zip"]["distance"]
      @zip = Zip.zip_codes_near(@zipcode, @distance)
      @shelters = Shelter.where(zip: @zip)
    else
      @shelters = Shelter.order(name: :asc)
    end
  end

  def new
    @shelter = Shelter.new
    @quote = Quote.all.sample
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
    if current_user
      @shelter = Shelter.find(params[:id])
      @dogs = @shelter.dogs.order(breed: :asc)
      respond_to do |format|
        format.html
        format.json do
          dog_breeds = @dogs.map { |dog| dog.breed }
          dog_hash = Hash.new
          dog_array = []
          dog_breeds.each do |breed|
            if dog_hash[breed]
              dog_hash[breed] += 1
            else
              dog_hash[breed] = 1
            end
          end

          dog_hash.each do |key, value|
            dog_array << { name: key, y: value }
          end

          render json: [dog_array]
        end
      end
    else
      redirect_to user_session_path
    end
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
