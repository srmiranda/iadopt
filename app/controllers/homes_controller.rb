class HomesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    if current_user
      redirect_to '/welcome'
    else
      redirect_to user_session_path
    end
  end

  def show
    @shelter = Shelter.first
  end
end
