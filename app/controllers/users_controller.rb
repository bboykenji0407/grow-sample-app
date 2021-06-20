class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
  end

  def create
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :dancer_name, :email,)
  end
  
end
